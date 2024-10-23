read -p "Введите имя файла: " filename

if [ -e "$filename" ]; then
    wc -l < "$filename"
else
    echo "Файл не найден."
fi
