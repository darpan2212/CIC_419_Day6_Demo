function add() {
	c=$(($1 + $2));
	echo "$1 + $2 = $c";
}

result=$( add $((RANDOM%10)) $((RANDOM%10)) );
echo $result;
