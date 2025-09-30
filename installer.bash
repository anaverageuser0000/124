#
#
printf "\nPress y to confirm.\n"

read -sN1 OUTPUT
if [[ $OUTPUT == "y" ]]; then
    printf "\n $OUTPUT\n" # %s becomes Output
else
    printf "Nah\n"
fi

