echo -e "Enter the input base : \c"
read ibase
echo -e "Enter the output base : \c"
read obase

echo -e "Enter the number : \c"
read num

(echo "ibase=$ibase;obase=$obase;$num") | bc
