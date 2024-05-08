#!/bin/bash

sshpass -p "$MN_PSW" \
    rsync -avz --exclude='*.o' \
    --exclude='*.a' \
    --exclude='*.exe' \
    --exclude='.git/' \
    --exclude='traces/' \
    --exclude='cutted_traces/' \
    --exclude='mn5-traces/' \
    ../ \
    "$MN_USR"@"$MN":/home/nct/"$MN_USR"/bin/miniTri