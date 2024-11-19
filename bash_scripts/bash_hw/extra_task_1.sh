# Считываем директорию
read -p "Enter dirpath: " dirpath
# Если директория существует
if [ -d "$dirpath" ]; then
    # Создаем файл логов операции
    if [ ! -f "history.log" ]; then
        touch history.log
    fi
    # Сохраняем текущую дату и время
    current_datetime=$(date +"%Y-%m-%d")
    file_n=0
    # Создаем в указанной директории папку для бэкапов
    if [ ! -d "$dirpath/backups" ]; then
        mkdir "$dirpath/backups"
    fi
    echo "$dirpath files to backup:" >> history.log
    # Проходим в цикле по всем элементам директории
    for file in "$dirpath"/*; do
    # Если элемент - файл, то создаем бэкап
        if [ -f "$file" ]; then
            echo "$file" >> history.log
            base=$(basename "$file")
            cp "$file" "$dirpath"/"backups"/"$current_ datetime""_backup_""$base"
            file_n=$(( file_n + 1 ))
        fi
    done
    # Сохраняем запись о бэкапе в логи
    echo "$current_datetime: Created $file_n backups for files in $dirpath" >> history.log
    # Отправляем уведомление пользователю
    notify-send -t 10000 "Backup result for $dirpath" "Created $file_n backups for files in $dirpath"
# Если директории не существует, выводим ошибку
else
    echo "Directory not found."
fi
