#!/bin/bash

FILENAME=bt_blocklist.gz
curl -s https://www.iblocklist.com/lists.php | grep -A 2 Bluetack | sed -n "s/.*value='\(http:.*\)'.*/\1/p" | xargs wget -O - | gunzip | egrep -v '^#' | gzip - > bt_blocklist.gz
