echo "HCF of two numbers"

echo -e "Enter the first number : \c"
read a
echo -e "Enter the second number : \c"
read b

xa=2
na=0
((A = $a / 2))
while [ $xa -le $A ]
do
   ((r1 = $a % $xa))
   if [ $r1 == 0 ]
   then
       arr1[na]=$xa
       ((na=$na+1))
       ((xa=$xa+1))
   else
       ((xa=$xa+1))
   fi
   Na=$na
done

echo -e "The factors of $a is the following : \c"
for((i=0; i<$Na; i=$i+1))
do
   echo -e "${arr1[$i]}"
done


xb=2
nb=0
((B = $b / 2))
while [ $xb -le $B ]
do
   ((r1 = $b % $xb))
   if [ $r1 == 0 ]
   then
       arr2[nb]=$xb
       ((nb=$nb+1))
       ((xb=$xb+1))
   else
       ((xb=$xb+1))
   fi
   Nb=$nb
done

echo
echo -e "The factors of $b is the following : \c\n"
for((i=0; i<$Nb; i=$i+1))
do
   echo -e "${arr2[$i]}"
done


for((i=0; i<$Na; i=$i+1))
do
  for((j=0; j<$Nb; j=$j+1))
  do
    if [ ${arr1[$i]} == ${arr2[$j]} ]
    then
        hcf=${arr1[$i]}
    fi
  done
done

echo -e "The HCF of $a and $b is : $hcf.\c"
echo

if [ $a -gt $b ]
then
    max=$a
elif [ $a -lt $b ]
then
    max=$b
else
    max=$a
fi


while :
do
  ((mod_a = $max % $a))
  ((mod_b = $max % $b))
  if [ $mod_a == 0 -a $mod_b == 0 ]
  then
      lcm=$max
      break
  fi
((max=$max+1))
done

echo -e "The LCM of $a and $b is : $lcm."
echo

  
