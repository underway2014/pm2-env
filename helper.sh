#!/bin/bash
if [ ! -n "$1" ]; then
  echo "please input seach key"
  exit 0
else
  echo "begin search $1..."
fi
line=`ps -ef | grep "$1" | grep -v "helper.sh" | grep -v "cgroup" | grep -v "grep" | grep -v "color" | grep -v "pts/" | wc -l`

if [ $line -ge 1 ]; then
  echo "total process is $line"
else
  echo "not exist"
  exit 0
fi
PIDS=`ps -ef | grep "$1" | grep -v "helper.sh" | grep -v "cgroup" | grep -v "grep" | grep -v "color" | grep -v "pts/" | awk '{print $2}'`
for pid in $PIDS
do
  echo -e "\n======begin process id:$pid========"
  if [ ! -n "$2" ]; then
    cat /proc/$pid/environ | tr '\0' '\n'
  else
    cat /proc/$pid/environ | tr '\0' '\n' | grep $2
  fi
  echo -e "======end process id:$pid========\n"
done


