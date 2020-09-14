function countdir {
	ls | wc -l
}

dirnumb=$(countdir)

for r in response
do	
	while true
	do
		echo "How many files do you think are in the current directory?"
		echo "Enter your guess here:"
		read response
		echo "You entered $response" 

		if [[ $response -eq $dirnumb ]]
		then
			echo "You are correct! Great job"
			break
		elif [[ $response -gt $dirnumb ]]
		then
			echo "Your response is too high. Please try again."
		elif [[ $response -lt $dirnumb ]]
		then
			echo "Your response is too low. Please try again." 
		elif [[ $response -eq 0 ]] && [[ $dirnumb -eq 0 ]]
		then
			echo "You are correct! Great job"
			break
		fi
	done
done

echo "End program"
