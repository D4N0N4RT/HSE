# Считываем введенное число
read -p "Enter the number: " number
# Проверяем на отрицательность
if [ $number -lt 0 ]; then
    echo "Entered number is less than 0"
# Проверяем на положительность
elif [ $number -gt 0 ]; then
    echo "Entered number is greater than 0"
    x=1
    # Проходимся циклом от 1 до введенного положительного числа
    while [ $x -lt $number ];
    do
        x=$(( $x + 1 ))
    done
    echo "It took $(( $x - 1 )) steps to count to your number"
# Иначе число равно нулю
else
    echo "Entered number equals 0"
fi
