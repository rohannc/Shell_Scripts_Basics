echo "AP Series"
echo -e "Enter the first term : \c"
read a
echo -e "Enter common difference : \c"
read d
echo -e "Enter number of terms : \c"
read n

sum=0
echo "The AP series : "
for((i=0; i<$n; i=$i+1))
do
   echo -e "$a\t\c"
   ((sum = $sum+$a))
   ((a=$a+$d))
done
echo -e "\nSum = $sum"

echo "GP Series"
echo -e "Enter the first term : \c"
read b
echo -e "Enter common ratio : \c"
read r
echo -e "Enter number of terms : \c"
read N

counter=0
echo "The GP series : "
for((i=0; i<$N; i=$i+1))
do
   echo -e "$b\t\c"
   ((counter = $counter+$b))
   ((b=$b*$r))
done
echo -e "\nSum = $counter"




