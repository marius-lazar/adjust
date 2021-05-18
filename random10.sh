#!/bin/bash
# create the arrays
declare -a result
thenumbers='1234567890'
i=10
r=0
# loop the loop
while [ $i -gt 0 ]; do
    # generate the random number
    number=$((RANDOM % $i))
    # get the number
    res=${thenumbers:$number:1}
    # remove the result from thenumbers
    thenumbers=$( echo $thenumbers | sed "s/$res//" )
    # if 0 transform into 10
    if [ $res = "0" ]; then
        res=1$res
    fi
    # put the number in array
    result[$r]=$res
    # iterate
    let "i-=1"
    ((r++))
done
# print it
echo ${result[*]}
