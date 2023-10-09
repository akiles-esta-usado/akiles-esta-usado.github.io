$song, $other = $args

$date=(Get-Date -Format "yyyy-MM-dd")
$time=(Get-Date -Format "HH:mm:ss")

if (!$song) {
    Write-Host "Song is missing"
    exit
}

$name="$date-$song.md"

Write-Host "file $name created"

echo "---"                         >> $name
echo "title: <REPLACE_TITLE>"      >> $name
echo "layout: post"                >> $name
# date: \'2023-03-12 16:06:55 -0000\'
echo "date: \'$date $time -0000\'" >> $name
echo "categories:"                 >> $name
echo "- tab"                       >> $name
echo "- <BANDA>"                   >> $name
echo "---"                         >> $name
echo ""                            >> $name
echo "~~~"                         >> $name
echo "~~~"                         >> $name
echo ""                            >> $name
echo "Referencias:"                >> $name
echo "- "                          >> $name
