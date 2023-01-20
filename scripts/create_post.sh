#!/bin/bash

date="$(date +'%Y-%m-%d')"
time="$(date +%T)"
name="$date-$1.md"
echo "file $name created on $PWD"


touch $name

echo "---"                         >> $name
echo "title: <REPLACE_TITLE>"      >> $name
echo "layout: post"                >> $name
echo "date: \'$date $time -0000\'" >> $name
echo "categories:"                 >> $name
echo "- <CATEGORIES>"              >> $name
echo "---"                         >> $name
