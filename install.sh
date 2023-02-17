#!/bin/bash

currentDirectory=`pwd`
# Downloading aliases file
filename="aliases.txt"
curl https://raw.githubusercontent.com/aminetchitooss/setup-env/master/.aliases --output $filename
value=`cat $filename`

# Finding file to update
filenameToUpdate=".zshrc"
cd
echo -e "\n$value" >> $filenameToUpdate

# Cleanup
cd $currentDirectory
rm -rf $filename

exit 0