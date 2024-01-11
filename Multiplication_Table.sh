echo -e "Multiplication Table : \c"
echo -e "Enter the number : \c"
read n

for((i=1; i<=10; i=$i+1))
do
   ((product=$n*$i))
   echo "$n * $i = $product"
done   
