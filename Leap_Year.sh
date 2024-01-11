echo -e "Enter the year : \c"
read i

((remainder4 = $i%4))
((remainder100 = $i%100))
((remainder400 = $i%400))

if [ $remainder4 -eq 0 ]
then
    if [ $remainder100 -eq 0 ]
    then
         if [ $remainder400 -eq 0 ]
         then
             echo "This year is a leap year."
         else
             echo "This year is not a leap year."
         fi
     else
         echo "This year is a leap year."
     fi
else
    echo "This is not a leap year."
fi
echo
