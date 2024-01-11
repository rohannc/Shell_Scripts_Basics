echo "Bubble Sort"

echo -e "Enter the number of elements in the array : \c"
read n
for((i=0; i<n; i=$i+1))
do
  echo -e "Enter element of index no. $i : \c"
  read array[$i]
done

echo -e "The Array : \c"
for((i=0; i<n; i=$i+1))
do
  echo -e "${array[$i]}\t\c"
done
echo

echo -e "The sorted array : \c"
for((i=0; i<($n-1); i=$i+1))
do
  for((j=($i+1); j<$n; j=$j+1))
  do
    if [ ${array[$i]} -gt ${array[$j]} ]
    then
        temp=${array[$i]}
        array[$i]=${array[$j]}
        array[$j]=$temp
    fi
  done
done


for((i=0; i<n; i=$i+1))
do
  echo -e "${array[$i]}\t\c"
done
echo

echo -e "Enter the element to search : \c"
read key

i=0
while [ $n -ge $i ]
do
   ((M=$i+$n))
   ((mid=$M/2))
   if [ $key == ${array[$mid]} ]
   then
       echo -e "The element is in the index no. $mid.\c"
       echo
       exit
   elif [ $key -gt ${array[$mid]} ]
   then
       ((i=$mid+1))
   else
       ((n=$mid-1))
   fi 
done
      
if [ $n -lt $i ]
then
    echo "The element is not found."
    echo
fi 



