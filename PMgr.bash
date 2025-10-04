trap "printf '\e[?25h'" EXIT

UPDATELIST(){
	PROCESSES=$(ps -eo %cpu,comm --sort=-%cpu | tr -d "%CPU" | tr -d "COMMAND")
#	PROCESSES=$(ps aux | awk '{print $3, $11}' | tr -d "%CPU" | tr -d "COMMAND")
}

PARSESTRING(){
	if [[ "$*" == *"print"* ]]; then
		echo "${*#print }"
#		echo "$*" | tr -d {"print":0:5}
	fi
}

while ( true ); do
	TOTAL_LINES=0
	read -N 1 -r -t 0.5 -s TEXT
	printf "$TEXT"
	TOTALSTRING+="$TEXT"
	#
	((i++))
#
	if (( i % 2 == 0 )); then

		printf "\033[2J\033[2;0H\e[42;1m" 

		UPDATELIST && printf "%s\e[0m\n\n\e[0;1m\$: \e[0m%s\e[47m \e[0m\e[?25l\n$LOGS" "$PROCESSES" "$TOTALSTRING"
		printf "\e[0m"
		for (( i=0; i<${#PROCESSES}; i++ )); do
			if [[ ${PROCESSES:i:1} == $'\n' ]]; then
				((TOTAL_LINES++))
			fi
		done
		echo ""
		echo "$TOTAL_LINES"
		#
	fi
#
	if [[ "$TEXT" == *$'\n'* ]]; then
		LOGS+="\n$TOTALSTRING"
		PARSESTRING "$TOTALSTRING"
		TOTALSTRING=""
	fi
done
