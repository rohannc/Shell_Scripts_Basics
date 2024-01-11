echo "Palindrome String"

echo -e "Enter the String : \c"
read string

rev_string=""

length=${#string}

for ((i=$length; i>0; i--))
do
   j=$(echo $string | cut -c $i)
   rev_string=$rev_string$j
done

echo "The Reverse String is : $rev_string"
if [ $rev_string = $string ]
then
    echo "It is a Palindrome String."
else
    echo "It is not a Palindrome String."
fi

