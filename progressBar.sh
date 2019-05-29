#!/bin/bash
a="||-->"
 for i in {0..50}
  do
   echo -ne "\033[${i}G${a}"
    let b=i*2
   echo -ne "\033[60G${b}%"
   sleep 0.2
  done
echo
