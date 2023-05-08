#!/bin/bash -e
# Nice little helper script to run the few commands

[ -z "$1" ] && echo "did not supply YYYY-MM-DD for script" && exit 1

echo "Creating new agenda for $1"
git checkout main
git fetch
git pull

DST_FILE=community/$1-community-meeting.md
cat community/template.txt | sed "s/YYYY-MM-DD/$1/" > $DST_FILE
echo "Done! Add agenda items, demos, and awesome stuff to $DST_FILE"
