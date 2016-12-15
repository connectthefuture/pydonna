#!/bin/bash
# 2016-12-15 07:34:05 pflint
# pydonna.sh - A shell tribute to Madonna...
if [ "$(id -u)" != "0" ]; then
   echo "This script need to run as root, and you are not root"; exit 1>&2
fi
echo "Like a Version:  This system contains the following versions of python..."
cd /usr/bin
ls -1 /usr/bin | grep python |tr -d "python" |grep ^[0-9] |grep -v "[a-zA-Z]" | sort -n |uniq
echo "Enter the number of the version you want to use"
read version
echo "ln -s "python$version" python"
read -p "Press [Enter] to reset link as shown above"
rm -rf /usr/bin/python
ln -s python$version python

