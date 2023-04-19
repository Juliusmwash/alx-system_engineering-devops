#!/bin/bash
echo "-------hello_world/-------"
echo "hello world!"
echo -e "\n-------current_working_directory/-------"
dir=$(pwd)
echo $dir
echo -e "\n-------list_files/--------"
ls
echo -e "\n-------print_file_contents/-------"
data="julius.txt"
cat $data
echo -e "\n-------last_lines/-------"
filename="julius.txt"
tail -n 3 $filename
echo -e "\n--------find_string_in_a_file/---dedication---"
searchstring="dedication"
grep $searchstring $filename
echo -e "\n--------search_for_files_containing_string/------"
searchstring="believe"
find "$dir" -type f -exec grep -l "$search_string" {} \;
echo -e "\n--------search_for_files_by_extensions/-----.txt----"
extension=".txt"
find "$dir" -type f -name "*$extension"
echo -e "\n---search_for_string_in_files_recursive/-----positively----"
search_string="positively"
grep -rnw "$dir" -e "$search_string"
echo -e "\n----------------END OF FIRST 9-------------------"
