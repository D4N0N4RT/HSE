# Создаем функцию с выводом Hello,
print_hello () {
    echo Hello, $1
}
# Создаем вторую функцию для расчета суммы двух чисел
print_sum () {
    echo "$1 + $2 = $(( $1 + $2 ))"
}
# Считываем введенное пользователем имя
read -p "Enter your name: " name
print_hello $name
# Считываем введенные пользователем числа
read -p "Enter first number: " f_num
read -p "Enter second number: " s_num
print_sum $f_num $s_num
