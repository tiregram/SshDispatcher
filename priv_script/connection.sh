#!/bin/bash
TARGET_HOST=$1

echo start connection $TARGET_HOST

## create file to speak
touch con/$TARGET_HOST
mkfifo in/$TARGET_HOST
touch out/$TARGET_HOST
touch err/$TARGET_HOST

## keep the tunel open
while [ -f con/$TARGET_HOST ];
do sleep 5;
done > in/$TARGET_HOST &

## launch ssh
ssh margeria@$TARGET_HOST "bash" \
    < in/$TARGET_HOST            \
    > out/$TARGET_HOST           \
    2> err/$TARGET_HOST &

# wait all children die
wait

## clean file
rm in/$TARGET_HOST  \
   out/$TARGET_HOST \
   err/$TARGET_HOST

echo end connection $TARGET_HOST
