#!/bin/bash -x

isPresent=1;
randomCheck=$((RANDOM%2));
checkPresent=1;
if [ $isPresent -eq $randomCheck ]
then
	echo "employee is Present";
else
	echo "employee is absent";
fi
