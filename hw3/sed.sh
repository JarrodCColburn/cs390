#!/bin/bash

echo "========================================================"
echo "This is the 2nd part of assignment #3. Please response with the 
question with a command line. The command you entered and 
the output of the command will be saved in file generated in part one"
echo "========================================================"

echo
echo -n "Please enter you Last Name: "
read -r lname
echo -n "Please enter you First Name: "
read -r fname

outfile=${lname}_${fname}.out

if [[ ! -e $outfile ]]; then
    echo "$outfile created through Part One does not exist!"
    echo "You must finish part one first!"
    echo "Bye..."
    exit 1
fi

tee << EOF >> $outfile
===================================================
  Assignement Three Part II
  $lname, $fname 
 `date "+%F %T" `
===================================================

EOF

textfile='input.txt'
echo "Part Two: exercise with 'sed' program"
echo "The textfile you will be working with is $textfile in your current directory."
if [[ ! -e $textfile ]]; then
    echo "$textfile does not exist"
    echo "You must first part one first"
    exit 1
fi

echo "Here is the content of $textfile:"
echo
echo --------------------------------------------------------------------------
cat $textfile

echo --------------------------------------------------------------------------
echo "Again, the file name is: $textfile:"
echo

echo "----------------------------------------------------------------------" | tee -a $outfile
echo "Q1: Change the name Jon to Jonathan" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd  
echo $cmd >> $outfile
eval $cmd | grep Jonathan | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q2: Delete the first three lines" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
eval $cmd | tee -a $outfile

echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q3: Print lines 5 to 10" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q4: Delete lines containing Lane" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q5: Print all lines where the birthdays are in Nov and Dec" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo  "Q6: Append three asterisks to the end of lines starting with Fred" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q7: Replace the line containing Jose with JOSE HAS RETIRED. (Do not apply this to address)" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo  "Q8: Change Popeye’s birthday to 11/14/46.  Assume you don’t know Popeye’s original birthday.  Use a regular expression to search for it." | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo 

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q9: Delete all blank lines (empty or contain spaces only)" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q10: Display lines containing employees who make 6 figures" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q11: Insert above the first line with a title: PERSONNEL FILE" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q12: Remove lines where the salaries end in 500" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Q13: Append at the end of the file with THE END" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

echo -e "\n----------------------------------------------------------------------" | tee -a $outfile
echo "Bonus: swap the first and last name" | tee -a $outfile
echo "----------------------------------------------------------------------" | tee -a $outfile
read -r cmd
echo $cmd >> $outfile
eval $cmd | tee -a $outfile
echo

id >> $outfile
uname -a >> $outfile
echo
echo "==========================================================================="

echo "Please print $outfile using a2ps and turn in at beginnig of class on the due date!"
echo -e "\nYOU ARE REQUIRED TO MAKE AN ENCRYPTED TARBALL FOR THIS ASSIGNMENT LIKE YOU HAVE DONE FOR ASSIGNMENT ONE.  THE TARBALL MUST BE NAMED AS hw3.tar.gz.rc2. \n"
echo "YOU MUST PUSH THE TARBALL TO GITHUB BY MIDNIGHT ON THE DUE DATE"   

echo "==========================================================================="
echo

