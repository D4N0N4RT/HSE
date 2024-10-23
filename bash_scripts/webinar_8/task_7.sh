add() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    exho "$num1 + $num2 = $sum"
}

read -p "Введите первое число: " first_num
read -p "Введите второе число: " second_num

add "$first_num" "$second_num"
