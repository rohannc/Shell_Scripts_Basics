echo "String Operations"

echo -e "Enter a String : \c"
read string
while :
do
echo "1 : Find the length of the string."
echo "2 : Convert all characters to uppercase and save it to a new string."
echo "3 : Convert all characters to lowercase and save it to a new string."
echo "4 : Count the number of words in the string."
echo "5 : Count the number of characters in the string."
echo "6 : Count the number of vowels in the string."
echo "7 : Count the number of consonants in the string."
echo -e "Choose an option : \c"
read option
case $option in
1)
echo "The length of the String is : ${#string}"
;;
2)
echo -e "The String in Upper Case : \c"
str_upp=$(echo $string | tr "[a-z]" "[A-Z]")
echo $str_upp
;;
3)
echo -e "The String in Lower Case : \c"
str_lwr=$(echo $string | tr "[:upper:]" "[:lower:]")
echo $str_lwr
;;
4)
echo -e "The number of words in the String : \c"
echo $string | wc -w
;;
5)
echo -e "The number of numericals in the String : \c"
echo $string | tr "[:upper:]" "[:lower:]" | tr -d "[a-z]" | tr -d "[\n]" | tr -d [:space:] | wc -c
;;
6)
echo -e "The number of Vowels : \c"
echo $string | grep -o -i "[aeiou]" | wc --lines
;;
7)
echo -e "The number of Consonants : \c"
echo $string | grep -o -i "[bcdfghjklmnpqrstvwxyz]" | wc --lines
;;
*)
echo "END......................"
exit
;;
esac
done
