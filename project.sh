while true
do
	echo "====== Srudent Record System ======="
	echo "1. Add Student"
	echo "2. View Students"
	echo "3. Search Student"
	echo "4. Delete Student"
	echo "5. exit"
	
	read -p "Enter choice: " choice

	case $choice in

	1)
		read -p "Enter Roll Number: " roll
		read -p "Enter Name: " name

		echo "$roll" | $name >> students.txt

		echo "Student added successfully!"
		;;

	2)
		echo "-----Students list-----"
		cat students.txt
		;;

	3)
		read -p "Enter roll number to search: " roll

		grep "$roll" students.txt
		;;

	4)
		read -p "Enter roll number to delete: " roll

		grep -v "$roll" students.txt > temp.txt
		mv temp.txt students.txt

		echo "Student deleted"
		;;

	5)
		echo "Exiting..."
		exit
		;;

	*)
		echo "Invalid choice!"
		;;
	esac

	echo ""
done
