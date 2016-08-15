#!/bin/bash 

CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=10

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then

echo “Your disk space is low. USED:$CURRENT%” | mail -s  “DISKSPACE” raviteja.muthareddy@autodesk.com

fi