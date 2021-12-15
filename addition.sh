function add() {
	c=$(($1 + $2));
	echo "$1 + $2 = $c";
}

result=$( add $((RANDOM%90 + 10)) $((RANDOM%90 + 10)) );
echo $result;
