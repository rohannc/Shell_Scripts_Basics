echo "Multiplication Table"
echo "____________________"
echo
for((i=1; i<=10; i=$i+1))
do
   for((j=1; j<=10; j=$j+1))
   do
      ((value=$i*$j))
      echo -e "$value\t\c"
   done
   echo
done
