#!/bin/bash 

CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=85

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then

echo “UPMACBUILD4 is low on disk space. USED:$CURRENT%” | mail -s  “DISKSPACE” raviteja.muthareddy@autodesk.com

fi