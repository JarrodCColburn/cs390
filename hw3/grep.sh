#!/bin/bash

echo "========================================================"
echo "This is Part ONE of the assignment #3. Please response with the 
question with a command line. The command you entered and 
the output of the command will be saved in file"
echo "========================================================"

echo
echo -n "Please enter you Last Name: "
read -r lname
echo -n "Please enter you First Name: "
read -r fname

outfile=${lname}_${fname}.out

tee << EOF > $outfile
===================================================
  Assignement Three Part I
  $lname, $fname 
 `date "+%F %T" `
===================================================

EOF

textfile='databook.txt'
echo "Part ONE: exercise with 'grep' program"
echo "The textfile you will be working with is $textfile in your current directory.
      Download it from class website if you haven't done so"
if [[ ! -e $textfile ]]; then
    echo "$textfile does not exist"
    exit 1
fi

echo "Here is the content of $textfile:"
echo --------------------------------------------------------------------------
cat $textfile

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "P1: Give the command to get the number of lines in $textfile" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd  
echo "$cmd" >>  $outfile
eval $cmd  | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "P2: Give the command to remove duplicate lines in $textfile and save the new file as input.txt" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd  
echo "$cmd" >> $outfile
eval $cmd
echo -e "\n Content of current directory $PWD:" | tee -a $outfile
ls | tee -a $outfile
echo -e "\ncontent of input.txt:" |tee -a $outfile
cat input.txt | tee -a $outfile

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "P3: Give the command to show the changes in input.txt from $textfile " | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd  
echo -e "\n$cmd" | tee -a  $outfile
eval $cmd | tee -a $outfile
textfile="input.txt"
echo "*******************************************************************" 
echo "NOTE: All the following actions are on $textfile"
echo "*******************************************************************" 
echo
echo "Q1: Print all lines containing the string San" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd  
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q2:Print all lines where the person's first name starts with J " | tee -a $outfile
echo "NOTE***: the first column is for First Name"
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
eval $cmd | tee -a $outfile

echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q3: Print all lines ending with 700" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q4: Print all lines that don't contain 834 " | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q5: Print all lines where birthdays are in Janurary" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo  "Q6: Print all lines where the phone number is in the 408 area code" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q7: Print all lines containing an uppercase letter, followed by FOUR lowercase letters, a comma, a space, and one uppercase letter" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo  "Q8: Print lines where the last name begins from A to E " | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q9: Print all lines preceded by a line number where the the salary is a six-figure number" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo


echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo -e "Q10: How many employees are from California? \nGive the command:" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

id >> $outfile
uname -a >> $outfile
echo
echo "----------------------------------------------------------------------"
echo "Congratulations! You have finished Assignment 3 Part I.  Here is your $outfile:"
echo "----------------------------------------------------------------------"
cat $outfile
echo 
echo "See you in Part II"
echo "----------------------------------------------------------------------"

