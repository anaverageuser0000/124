#
#
printf "\nPress y to confirm.\n"
sleep "0.1"
read -sN1 OUTPUT
if (( "$OUTPUT" == "y" )); then
    printf "\nHello world!\n"
else
    printf "\nNah\n"
fi