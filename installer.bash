#
#
printf "\nPress y to confirm.\n"

read -sN1 OUTPUT
if [ $OUTPUT = "y" ]; then
    printf "\nHello world!\n"
else
    printf "\nNah\n"
fi