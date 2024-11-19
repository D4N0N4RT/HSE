# Присваивание аргумента скрипта переменной
FILE="$1"
# Проверка наличия файла в директории
if [ -e "$FILE" ]; then
    echo "File $FILE exists in current directory"
else
    echo "File $FILE does not exist in current directory"
fi
# Итерация по файлам директории через For цикл
for file in ./*; do
    if [ -f "$file" ]; then
        # Вывод названия файлов и прав доступа
        echo -n "$(basename "$file"): "; echo "$( stat -c %A ${file} )"
    fi
done
