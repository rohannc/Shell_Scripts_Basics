echo -e "Enter the value of a : \c"
read a
echo -e "Enter the value of b : \c"
read b

if [ $a -lt $b ]
then
    min=$a
    max=$b
elif [ $b -lt $a ]
then
    min=$b
    max=$a
else
    echo "The values are same."
    exit
fi

ls -l > file1
exec < file1
read line
echo -e ""
while read line
do
   set -- `echo $line`
   if [ $5 -ge $min -a $5 -le $max ]
   then
        echo -e "$5\t$9"
   fi
done
rm file1

