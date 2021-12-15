PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;

totalSalary=0;
totalWorkingHour=0;
day=0;
while [[ $day -le $MAX_WORKING_DAY &&  $(($totalWorkingHour + 4)) -lt $MAX_WORKING_HOUR ]]
do
	((day++));
	isPresent=$((RANDOM%3));

	case $isPresent in
		$PRESENT)
			#echo "Employee is present";
			workingHour=8;
		;;

		$PART_TIME)
			#echo "Employee is working part time";
			workingHour=4;
		;;

		*)
			#echo "Employee is absent";
			workingHour=0;
		;;
	esac

	salary=$(($workingHour * $PAY_PER_HOUR));
	#echo "Employee wage : "$salary
	totalWorkingHour=$(($totalWorkingHour + $workingHour));
	totalSalary=$(($totalSalary + $salary));
done

echo "Total Monthly salary of an Emp : $totalSalary USD (Total working hour : $totalWorkingHour)"
