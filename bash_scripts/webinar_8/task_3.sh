read -p "Введите имя директории: " dirpath

if [ -d "$dirpath" ]; then
    current_datetime=$(date +"%Y-%m-%d %H:%M:%S")
    tar -cvf "archive_$current_datetime.tar" -C "$dirpath"
else
    echo "Директория не найдена."
fi
