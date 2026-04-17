while true; do
echo "--menu--"
echo "1.add student"
echo "2.show students"
echo "3.search student"
echo "4.exite"
echo "choose"
read choice
if [ $choice = 1 ];
then 
	echo "add student"
	echo "enter name"
	read name
	echo "enter age"
	read age
	if [ $age -lt 18 ];
	then
		echo "student is minor"
	else
		echo " $name - $age " >> students.txt
	fi
	elif [ $choice = 2 ];
	then
		cat students.txt
	elif [ $choice = 3 ];
	then
		echo "search a name"
		read name
		if grep $name students.txt; then
			echo "student found"
	else
		echo "not found"
		fi
	elif [ $choice = 4 ];
	then
		break
fi
done
