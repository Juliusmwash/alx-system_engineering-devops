#!/bin/bash

sum=0
for num in "$@"
do
    sum=$((sum + num))
done
echo -e "(1)-------------------------sum_all_numbers/---------\n"
echo "Sum of the numbers: $sum"

echo -e "\n(2)-------------------just_the_files---------------"
echo -e "Unfortunately, I didn't understand what was meant here\n"

echo -e "\n(3)----------------remove_extensions_from_files/----\n"
echo -e "######-- files before extension removal ######--"
touch a.txt b.txt c.py d.c e.exe f.json g.json
ls
for file in *
do
    if [ -f "$file" ] && [ "${file##*.}" != "$file" ]; then
        mv "$file" "${file%.*}"
    fi
done
echo -e "\n######-- files after extension removal ######--"
ls
mv 2-next_9_tasks 2-next_9_tasks.sh
rm a b c d e f g

echo -e "\n(4)------------------replace_spaces_in_filenames/------\n"
touch "a a.txt" "b b.txt" "julius mwass .txt"
echo -e "#########--- files with spaces ########--\n"
ls
for file in *
do
    if [ -f "$file" ]; then
        newname=$(echo "$file" | tr ' ' '_')
        if [ "$newname" != "$file" ]; then
            mv "$file" "$newname"
        fi
    fi
done
echo -e "\n###########--- files after replacing spaces ########---\n"
ls
rm a_a.txt b_b.txt julius_mwass_.txt


echo -e "\n(5)--------------files_starting_with_a_number/---------\n"
echo -e "########--- all files in the directory ---########\n"
touch a.txt b.txt c.py d.c e.exe f.json g.json 2a.txt 3b.c 4d.py 6e.exe 7f.py
ls
echo -e "\n##########--- all files starting with a number --+########\n"
for file in [0-9]*
do
    if [ -f "$file" ]; then
        echo "$file"
    fi
done
rm a.txt b.txt c.py d.c e.exe f.json g.json 2a.txt 3b.c 4d.py 6e.exe 7f.py
echo -e "\n(6)------------print_nth_line/-----------------"
mv mwass mwass.txt
filename="mwass.txt"
line_number=2

if [ ! -f "$filename" ]; then
    echo "Error: $filename does not exist"
    exit 1
fi

if ! [[ "$line_number" =~ ^[0-9]+$ ]]; then
    echo "Error: $line_number is not a valid line number"
    exit 1
fi

sed "${line_number}q;d" "$filename"

echo -e "\n(7)------------- reverse_readme/----------------"
rm readme
cp rreadme readme.md
echo -e "#####--- file content before reversing ---######\n"
cat readme.md
filename="readme.md"

if [ ! -f "$filename" ]; then
    echo "Error: $filename does not exist"
    exit 1
fi

tac "$filename" > temp.txt
mv temp.txt "$filename"
echo -e "\n########--- file content after reversing ---#####\n"
cat readme.md

echo -e "\n(8)--------------remove_duplicate_lines---------\n"
echo -e "######--- file before removing duplicates ---#####\n"
rm julius
cp jjulius julius.txt
cat julius.txt
filename="julius.txt"

if [ ! -f "$filename" ]; then
    echo "Error: $filename does not exist"
    exit 1
fi

sort -u "$filename" > temp.txt
mv temp.txt "$filename"
echo -e "\n#######--- file after removing duplicates ---######\n"
cat julius.txt

echo -e "(9)------------corrupted files ------------\n"
ls
echo -e "\n"
echo -e "Searching for non-ASCII files in $(pwd)\n"
for file in *
do
    # Check if the file is a regular file
    if [ -f "$file" ]
    then
        # Check if the file is recognized as "ASCII text" by the file command
        if ! file -b "$file" | grep -q "ASCII text"
        then
            echo "$file is not an ASCII file"
        fi
    fi
done

echo -e "\nThankyou guys hope you found this fun and helpful. Soon i will release the source code to my github account, love you all\nJulius Mwangi, ALX student"
