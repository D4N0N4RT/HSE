read -p "Введите первое число: " first_num
read -p "Введите второе число: " second_num

if ["$first_num" -gt "$second_num"]; then
    echo "$first_num > $second_num"
elif ["$first_num" -lt "$second_num"]; then
    echo "$first_num < $second_num"
else
    echo "$first_num = $second_num"
fi
