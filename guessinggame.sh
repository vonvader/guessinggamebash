#!bin/bash
echo “Please enter the number of files in currend directory.”
read guess
number=$(ls -1 | grep -v ^l | wc -l)
if [ $guess -eq $number ]
    then
echo "Congratulations! You won!"
exit
fi
while [ true ]
do
number=$(ls -1 | grep -v ^l | wc -l)
if [ $guess -eq $number ]
then
echo "Congratulations! You win!"
exit
elif [ $guess -lt $number ]
then
echo "More than the guess"
elif [ $guess -gt $number ]
then
echo "Fewer than the guess"
fi
echo "Please re-enter the number of files."
read guess
done

exit
