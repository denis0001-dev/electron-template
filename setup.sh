#!/bin/bash

echo "Setting up the project..."

# modules

echo "Extracting node-modules..."

mkdir -p node_modules >/dev/null
cd node_modules

#if ! [ -e "node_modules/x*" ]
#then
#echo "Error: There is no parts."
#exit 1
#fi

echo "Combining parts..."

cat x* > ./node_modules.zip

echo "Unpacking..."

parts=$(find . | grep -E "\./x.*")

unzip ./node_modules.zip
rm ./node_modules.zip
rm $parts

# End

read -p "Delete the script? (y/n): " CHOICE

if [ $CHOICE == "y" ]
then
rm $0
fi

