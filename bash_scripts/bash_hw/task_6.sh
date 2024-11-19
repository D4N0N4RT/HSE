# Построчно считываем input.txt и выводим в консоль
while read -r line; do
    echo "$line"
done < input.txt
# Перенаправляет вывод потока stdout в файл output.txt
wc -l input.txt > output.txt
# Перенаправляет вывод потока stderr в файл error.log
ls -Sl /us/ 2> error.log
cat output.txt
cat error.log
