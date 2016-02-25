#!/bin/bash

while getopts u:ah opt

do
   case $opt in
    "u")
        echo "option-->u  param-->$OPTAGE"
        ;;
     "a")
        echo "option-->a"
        ;;
     "h")
        echo "option-->h"
        ;;
      *)
        ;;
    esac

done


