#!/bin/bash

####
# example line to process: /Music/01-All Singles/'til Tuesday - Voices Carry - 05 - Voices Carry.mp3
# Step 1: get sub_dir, excluding base dir /Music, which we won't include in the target dir path.
# Step 2: mkdir of sub_dir in target_dir.
# Step 3: cp source file to $target_dir/$sub_dir
# 

usage="$0 -f <play_list_file> -b <base_dir> -d <target_dir> \n
## Example: $0 -f /Mac_stuff/top_songs.m3u -b Muzika -d top_songs
"

chkp() {
  if [[ $# -lt 6 ]]
  then
    echo -e '!!\n!! ERROR! Not enough arguments.\n!!'
    echo -e $usage
    exit
  fi
  
  while getopts f:b:d: v_opt; do
     case $v_opt in
      f)  list_file=$OPTARG
          ;;
      b)  base_dir=$OPTARG
          ;;
      d)  target_dir=$OPTARG
          ;;
      \?) echo $usage
          exit 1
          ;;
     esac
  done
  echo "list file : $list_file. target dir : $target_dir"
}

my_cp() {
  cat "$list_file" | egrep -v "^#" | while read line; do
    # 1. delete base_dir from the full path
    sub_dir=${line#$base_dir}
    file_name=`echo $sub_dir | rev | cut -f1 -d"/" | rev`
    # 2. cut off file name to get sub_dir
    sub_dir=`echo $sub_dir | rev | cut -f2- -d"/" | rev`
		echo $sub_dir
		echo $file_name
    [ -d "$target_dir/$sub_dir" ] || mkdir -p "$target_dir/$sub_dir"
    cp -p "$line" "$target_dir/$sub_dir/."
  done
}

chkp "$@"

my_cp

