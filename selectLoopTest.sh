select cnt in 0 1 2 3 4 5 6 
do
	case $cnt in
		0|2|4|6)
			echo "Even number"
			;;
		1|3|5)
			echo "Odd number"
			;;
		*)
			break;
			;;
	esac;
done
