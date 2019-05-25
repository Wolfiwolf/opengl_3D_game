clear
if cmake .;
then
	echo "----------BUILD------------"
	if make;
	then
		echo "-----------RUN-------------"
		./game
	fi
fi

