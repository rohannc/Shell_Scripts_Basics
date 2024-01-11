echo "Linear Search"

echo -e "Enter the number of elements in the array : \c"
read n
for((i=0; i<n; i=$i+1))
do
  echo -e "Enter element of index no. $i : \c"
  read array[i]
done

echo -e "The Array : \c"
for((i=0; i<n; i=$i+1))
do
  echo -e "${array[i]}\t\c"
done
echo

echo -e "Enter the element to search : \c"
read x
i=0
while [ $i -ne $n ]
do
   if [ $x -eq ${array[$i]} ]
   then
       echo -e "The element is in index no. $i .\c"
       echo
       exit
   fi
   ((i=$i+1))
done
if [ $i -eq $n ]
then
    echo -e "The element can not found.\c"
fi
echo

