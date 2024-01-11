echo -e "Enter the File name : \c"
read file1

charnum=$(cat $file1 | wc -c)
wordnum=$(cat $file1 | wc -w)
linenum=$(cat $file1 | wc -l)
while :
do
echo "1 : Count the total numbers of characters, words, lines in the file."
echo "2 : Convert all the characters to uppercase and save it to a new file."
echo "3 : Convert all the characters to lowercase and save it to a new file."
echo "4 : Count the total number of numeric characters in the file."
echo "5 : Count the total number of vowels in the file."
echo "6 : Count the total number of consonants in the file."
echo -e "Choose an option : \c"
read option
case $option in
1)
echo "The number of characters in the file is : $charnum"
echo "The number of words in the file is : $wordnum"
echo "The number of lines in the file is : $linenum"
;;
2)
touch upperfile.txt
cat $file1 | tr "[:lower:]" "[:upper:]" > upperfile.txt
echo "The new file with uppercase contents : "
cat upperfile.txt
rm upperfile.txt
;;
3)
touch lowerfile.txt
cat $file1 | tr "[:upper:]" "[:lower:]" > lowerfile.txt
echo "The new file with lowercase contents : "
cat lowerfile.txt
rm lowerfile.txt
;;
4)
echo -e "The number of numericals in the file : \c"
cat $file1 | tr "[:upper:]" "[:lower:]" | tr -d "[a-z]" | tr -d "[\n]" | tr -d [:space:] | wc -c
;;
5)
echo -e "The number of Vowels in the file : \c"
cat $file1 | grep -o -i "[aeiou]" | wc --lines
;;
6)
echo -e "The number of Consonants in the file : \c"
cat $file1 | grep -o -i "[bcdfghjklmnpqrstvwxyz]" | wc --lines
;;
*)
echo -e "\n\nEND...................."

exit
;;
esac
done
