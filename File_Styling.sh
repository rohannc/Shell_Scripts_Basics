echo -e "Enter the file name : \c"
read file1

linenum=$(cat $file1 | wc -l)

for ((i=1; i<=$linenum; i++))
do
   string=$(head -$i $file1 | tail -1)
   echo "<< $string >>"
done
echo


