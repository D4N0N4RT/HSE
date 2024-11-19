cd "$1"
# Создаем директории для изображений и документов
if [ ! -d "./Images" ]; then
    mkdir "./Images"
fi
if [ ! -d "./Documents" ]; then
    mkdir "./Documents"
fi
if [ ! -e "sort_history.log" ]; then
    touch "sort_history.log"
fi
# Перемещаем изображения
current_datetime=$(date +"%Y-%m-%d")
echo "($current_datetime) Images in $1 to move:" >> sort_history.log
ls *.{png,jpg,gif} -1 >> sort_history.log
mv *.png *.jpg *.gif "./Images"
# Перемещаем документы
echo "($current_datetime) Documents in $1 to move:" >> sort_history.log
ls *.{pdf,docx,txt} -1 >> sort_history.log
mv *.docx *.pdf *.txt "./Documents"
