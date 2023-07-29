#!/bin/sh

abc_dir="Contests/abc"
contest_num=$1
contest_dir="$abc_dir/$1"
date=$( date "+%Y/%m/%d" )

if [ -d "$contest_dir" ]; then
    echo $contest_num" already exists"
    exit 0
fi
mkdir $contest_dir

echo "Contest : AtCoder Beginner Contest "$contest_num >> $contest_dir/metadata
echo "URL : https://atcoder.jp/contests/abc"$contest_num >> $contest_dir/metadata
echo "Author : ekureaa" >> $contest_dir/metadata
echo "Created : "$date >> $contest_dir/metadata
echo "Passed : " >> $contest_dir/metadata


for p in {A..H}
do
    mkdir $contest_dir/$p
    echo -n > $contest_dir/$p/input.txt
    echo -n > $contest_dir/$p/Main.cpp
done

git add $contest_dir
git commit -m "Init: AtCoder Beginner Contest $contest_num"
