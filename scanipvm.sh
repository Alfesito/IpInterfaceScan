#!/bin/bash

function ctl_c(){
  echo -e "\n[!]Saliendo....\n"
  exit 1
}
trap ctl_c INT

echo -e "\nLa ip de la VM objetivo -> "$(arp-scan -I en0 -l | grep "08:00:27" | awk '{print $1}')""

