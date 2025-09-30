#
#
printf "\nPress y to confirm.\n"

read -sN1 OUTPUT
if [[ $OUTPUT == "y" ]]; then
    printf "%s \n" '$OUTPUT' # %s becomes Output
else
    printf "Nah\n"
fi

