#!/bin/bash

date="$(date +'%Y-%m-%d')"
time="$(date +%T)"
name="_posts/embedded/$date-$1.md"
echo "file $name created on $PWD/embedded"


touch "$name"

echo "---"                         >> $name
echo "title: <REPLACE_TITLE>"      >> $name
echo "layout: post"                >> $name
echo "date: \'$date $time -0000\'" >> $name
echo "categories:"                 >> $name
echo "- embedded"                       >> $name
echo "- <CAT1>"                   >> $name
echo "---"                         >> $name
echo ""                            >> $name
echo "~~~"                         >> $name
echo "~~~"                         >> $name
echo ""                            >> $name
echo "Referencias:"                >> $name
echo "- "                          >> $name
