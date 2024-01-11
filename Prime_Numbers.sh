echo "Prime Numbers"

echo -e "Enter the number of terms to be printed : \c"
read n
counter=1
N=2
echo "$N"
j=3

while [ $counter -lt $n ]
do

   for((i=2; i<=($j/2); i=$i+1))
   do
      ((r=$j%$i))
      if [ $r = 0 ] 
      then
          break
      fi    
   done
   x=$(($j/2))
   if [ $i -gt $x ]
   then
       echo -e "$j\t"
       ((counter=$counter+1))
   fi
   ((j=$j+1))
done

      
   
