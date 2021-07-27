#!/bin/bash

index=0

if [ $# -ne 1 ]
then
    for i in `seq 10`
    do
        echo $index , $RANDOM  >> "inputFile.csv"
        index=$((index+1))
    done
fi

if [ $# -eq 1 ]
then
    for i in `seq $(($1 + 1))`
    do
        echo $index , $RANDOM  >> "inputFile.csv"
        index=$((index+1))
    done
fi



