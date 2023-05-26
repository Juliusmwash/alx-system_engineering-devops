#!/bin/bash
echo -e "-----------extract_ip_addresses/----------"
file="ip_addresses.txt"
grep -E -o "([0-9]{1,3}\.){3}[0-9]{1,3}" "$file"

echo -e "\n----------delete_files/------------"
file_pattern="*.test"
read -p "Are you sure you want to delete all files matching the pattern \"$file_pattern\"? [y/N] " confirmation
if [[ $confirmation == [yY] || $confirmation == [yY][eE][sS] ]]; then
  # Delete the files
  find . -name "$file_pattern" -type f -delete
  echo "All files matching the pattern \"$file_pattern\" have been deleted."
else
  echo "No files have been deleted."
fi

echo -e "\n--------------count_files/---------------"
num_files=$(find . -type f | wc -l)
# Print the count
echo "There are $num_files files in this directory and its subdirectories."

echo -e "\n--------------simple_sort/---------------"
echo "Enter the file name:"
read filename
# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi
# Sort the file
sort "$filename"

echo -e "\n--------------count_string_in_line/---------------"
echo "Enter the file name:"
read filename
echo "Enter the string to search for:"
read search_string
# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi
# Count the occurrences of the string in the file
count=0
while read -r line; do
  occurrences=$(echo "$line" | grep -o "$search_string" | wc -l)
  count=$((count + occurrences))
done < "$filename"

echo "The string '$search_string' appears $count times in the file."

echo -e "\n--------------split_on_char/---------------"
echo "Enter the string to split:"
read string_to_split
echo "Enter the character to split on:"
read split_char
# Split the string on the character and print the resulting substrings
IFS="$split_char" read -ra substrings <<< "$string_to_split"
for substring in "${substrings[@]}"; do
  echo "$substring"
done

echo -e "\n--------------print_number_sequence/---------------"
# Ask for the starting number, ending number, and step size
echo "Enter the starting number:"
read start_num
echo "Enter the ending number:"
read end_num
echo "Enter the step size:"
read step_size
# Print the number sequence
for ((i=start_num; i<=end_num; i+=step_size)); do
  echo "$i"
done

echo -e "\n--------------remove_files_with_extension/---------------"
# Ask for the file extension to remove
echo "Enter the file extension to remove (without the dot):"
read file_ext
# Remove the files with the specified extension
find . -type f -name "*.$file_ext" -delete

echo "Files with extension .$file_ext have been removed."


echo -e "\n--------------replace_text_in_files/---------------"
# Ask for the file to edit and the text to replace
echo "Enter the file to edit:"
read filename
echo "Enter the text to replace:"
read old_text
echo "Enter the new text:"
read new_text
# Replace the text in the file
sed -i "s/$old_text/$new_text/g" "$filename"

echo "Text replaced successfully in $filename."

