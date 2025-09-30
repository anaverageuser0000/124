#
#
printf "\nPress y to confirm.\n"

read -sN1 OUTPUT
if [[ $OUTPUT == "y" ]]; then
    printf "$OUTPUT \n"
else
    printf "Nah\n"
fi

