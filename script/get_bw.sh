#!/bin/bash
IF=$2
UPLOADFLAG=$1
get_speed(){
	awk '{if(l1){print  "Download:"($2-l1)/1024"kB/s",
               "\tUpload:", ($10-l2)/1024"kB/s"} else{l1=$2; l2=$10;}}' \
    <(grep $IF /proc/net/dev) <(sleep 1; grep $IF /proc/net/dev)
}
# Example usage
# while true
# do
#      get_speed 
# done
