# Считываем введенную директорию
read -p "Enter path to directory" dirpath
# Добавляем новую запись в crontab с введенной директорией
(
    crontab -l 2> /dev/null
    echo "0 0 * * * ./move_files.sh $dirpath"
) | crontab -
