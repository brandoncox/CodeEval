#!/bin/bash
echo "Enter the codeeval problem name (this is the name of the file)"
read PROB_NAME
echo "Enter the language [ruby, java, python, javascript]"
read LANG
echo "What level is this problem [easy, moderate, hard]"
read DIFF

echo "Does this look correct:"
echo "" 
echo "Problem name: $PROB_NAME" 
echo "Language: $LANG" 
echo "Difficulty: $DIFF"
echo "Accept? (y/n)"
read accept

if [ "$accept" = "n" ]; then
 echo 'exiting...'
 exit 1;
fi

case "$LANG" in
	ruby) extension=".rb"; 
	;;
	python) extension=".py"; 
	;;
	javascript) extension=".js";
	;;
	java) extension=".java"; 
	;;
esac

echo "Creating INPUT File..."
INPUT_FILE="./${DIFF}/input/${PROB_NAME}.txt"
touch $INPUT_FILE

echo "Creating Code File..."
CODE_F="./${DIFF}/${PROB_NAME}${extension}"
cp "./templates/${LANG}_template${extension}" $CODE_F

echo "---------------------"
echo "	Input: ${INPUT_FILE}"
echo "	Code: ${CODE_F}"
echo "---------------------"