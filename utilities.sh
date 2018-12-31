#!/bin/bash
# common utilities functions

# @brief install file $1 to $2 (all with absolute path)
# $1 is the source file, $2 is the destination file
function install_file()
{
   # check if the destination file exists
   if [ -f $2 ]; then
      # check whether the file is identical
      is_identical=$(diff "$1" "$2")
      # if not the same, backup the original file first
      if [ "$is_identical" != "" ]; then
         timestamp=$( date +%Y%m%d_%H%M%S )
         echo "Found existing $2. Backup to $2_${timestamp}"
         cp -f $2 $2_${timestamp}
      fi
   fi
   cp -f $1 $2
}

