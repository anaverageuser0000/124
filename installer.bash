#
#
read -sN1 OUTPUT && printf "\nPress y to confirm."
if (( "$OUTPUT" == "y" )); then
    printf "\nHello world!\n"
else
    printf "\nNah\n"
fi