#!/bin/bash

shopt -s -o nounset
HostList=${1:?'Please supply hostIP file'}

[ ! -f $HostList ] && echo 'hostIP IS not found' && exit 1

Date=$(date +%Y%m%d%H%M)

Date_for_man=$(date +'%Y-%m-%d %H:%M')

pingNum=4

padir="/home/root/result"

pahtml="$padir/result.html"

pahtml_now="$padir/pa-$Date.html"

html_head()
{
	[ ! -e $padir ] && mkdir -p $padir
	cat << HEAD > $pahtml_now
	<html>
	<head>
	<title>check result</title>
	</head>
	<body bgcolor="white">
	<div align=center><font size=6>*** my host check ***</b></font></div>
	<div align=center>check Time: $Date_for_man</div>
	<p>
	<table width="60%" align=center border=3>
	<tr>
		<td>HOSTNAME</td>
		<td>IP</td>
		<td>LEAST RESPONSE TIME</td>
		<td>MAXIMUM RESPONSE TIME</td>
		<td>AVERAGE RESPONSE TIME</td>
	</tr>
HEAD
}

html_tr()
{
	if [ "$1" = "PingError" ];then
	cat <<TR >>$pahtml_now
	<tr>
		<td>$host</td>
		<td>$ip</td>
		<td colspan=3><font color=red><b>NOT CONNECT!!!</b></font></td>
	</tr>    
TR
	else
	cat <<TR >>$pahtml_now
	<tr>
		<td>$host</td>
		<td>$ip</td>
		<td>$rt_min ms</td>
		<td>$rt_max ms</td>
		<td>$rt_avg ms</td>
	</tr>
TR
	fi

}



html_end()
{
	cat <<END >> $pahtml_now
	</table>
	</body>
	</html>
END
	ln -sf $pahtml_now $pahtml
}

html_head

while read host ip
do
	rt_min=
	rt_avg=
	rt_max=
	
	while read r
#	echo $r
	do
		if [[ "$r" == rtt* ]];then
			rt_min=$(echo $r | awk '{print $4}' | awk -F/ '{print $1}')
			rt_avg=$(echo $r | awk '{print $4}' | awk -F/ '{print $2}')
			rt_max=$(echo $r | awk '{print $4}' | awk -F/ '{print $3}')
			html_tr $rt_min $rt_avg $rt_max
		fi
	done < <(ping -c $pingNum $ip)
	if [ -z "$rt_min" ];then
		html_tr PingError
	fi
done < $HostList

html_end

