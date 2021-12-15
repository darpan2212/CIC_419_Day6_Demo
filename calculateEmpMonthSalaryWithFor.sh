PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;
MAX_WORKING_DAY=20;

totalSalary=0;

for ((day=1;day<=$MAX_WORKING_DAY;day++))
do
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
	totalSalary=$(($totalSalary + $salary));
done

echo "Total Monthly salary of an Emp : $totalSalary USD"
