#!/bin/bash


while true
do
   
    rx1=$(< /sys/class/net/$1/statistics/rx_bytes)
    tx1=$(< /sys/class/net/$1/statistics/tx_bytes)
   sleep 1
   rx2=$(< /sys/class/net/$1/statistics/rx_bytes)
   tx2=$(< /sys/class/net/$1/statistics/tx_bytes)
  echo -e "Dowload:" $((               ((rx2) - (rx1))/(1024)                )) " Kb/s \tUpload:" $((               ((tx2) - (tx1))/(1024)                ))"Kb/s" 

done
