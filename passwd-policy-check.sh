#!/bin/bash
#
#
#
#
#
#

FILE=passwd-policy-check-$(date +%F).txt

cat /etc/login.defs | grep "PASS_MAX_DAYS" > ./$FILE
tail -n +2 "./$FILE" > "./$FILE.tmp" && mv "./$FILE.tmp" "./$FILE" 

