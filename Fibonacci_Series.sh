echo "Fibonacchi Series : "
echo -e "Enter the number of terms in the series : \c"
read n

f1=0
f2=1
echo -e "$f1\t$f2\t\c"
c=3
((sum=$f1+$f2))
while [ $c -le $n ]
do
   ((f=$f1+$f2))
   echo -e "$f\t\c"
   ((sum=$sum+$f))
   f1=$f2
   f2=$f
   ((c=$c+1))
done
echo -e "\nSum = $sum"
