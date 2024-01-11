echo -e "Enter the file name: \c"
read file1

echo "The contents of the file : "
cat $file1

echo "The contents of the file in reverse order : "
tac $file1
