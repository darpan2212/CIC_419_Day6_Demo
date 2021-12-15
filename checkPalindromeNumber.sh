function checkPalindrome() {
	mainNum=$1;
	reverseNum='';
	while [ $mainNum -ne 0 ]
	do
		reverseNum=$reverseNum$(($mainNum%10));
		mainNum=$(($mainNum/10));
	done
	#echo $reverseNum;
	if [ $1 -eq $reverseNum ]
	then
		echo "$1 is the palindrome number";
	else
		echo "$1 is not the palindrome";
	fi
}

read -p "Enter the number for palindrome : " num;
result=$(checkPalindrome $num);
echo $result;
