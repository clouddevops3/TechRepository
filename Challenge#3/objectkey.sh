#!/bin/bash

# Pre-requisite :  Install jq if not installed
# sudo yum update -y
# sudo yum install jq -y
objectkey() {
usage="\n 2 params Required \n\n 1 - inputString \n 2 - keyName to find \n\n"

#case $1 in
#        -h) echo $usage ;;
#          h) echo $usage ;;
#          help) echo $usage ;;
 #  esac
#if [ -z $1 ] ; then
# echo "Error!! Script is terminated. Please provide input object!" && exit 1;
#fi

#if [ -z $2 ] ; then
# echo "Error!! Script is terminated. Please provide key to proceed further" && exit 2;
#fi

echo "Please provide the object"
read object
echo "Please provide the key to proceed further"
read key
echo -e "\n"
echo "Output"
   input=$object
   keyname=$key
   convertSlashToDot="."$(echo $keyname | sed -e 's/[][/]/\./g')
   echo $input | sed -e 's/\(“\|”\)/"/g' | jq $convertSlashToDot | sed 's/"//g'
}
objectkey $object $key
