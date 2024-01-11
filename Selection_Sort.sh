echo "Selection Sort"

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

for((i=0; i<($n-1); i=$i+1))
do
  min=${array[$i]}
  min_index=$i
  for((j=($i+1); j<$n; j=$j+1))
  do
    if [ $min -gt ${array[$j]} ]
    then
        min=${array[$j]}
        min_index=$j
    fi
  done
  temp=${array[$i]}
  array[$i]=$min
  array[$min_index]=$temp
done

echo -e "The sorted array in ascending order : \c"

for((i=0; i<n; i=$i+1))
do
  echo -e "${array[$i]}\t\c"
done
echo

