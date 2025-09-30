#
#
printf "\nPress y to confirm.\n"

read -sN1 OUTPUT
if [ $OUTPUT = "y" ]; then
    printf "\n$OUTPUT"
else
    printf "\nNah\n"
fi