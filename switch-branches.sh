#!/bin/bash

targetBranch="master"
echo -n "Enter target branch > "
read targetBranch

folders=(
    cabinet \
    launcher \
    openid-provider
)

for folder in ${folders[*]}
do
    echo $folder
    cd $folder
    git pull
    git checkout ${targetBranch}
    git pull
    cd ../
done
