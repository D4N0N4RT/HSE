read -p "Введите имя файла: " filename
read -p "Введите слово: " word

if [[ -e $filename ]]; then
	count=$(grep -o "$word" "$filename" | wc -l)
	echo "В заданном файле $count слов $word"
else
	echo "Файл не найден!"
fi;

echo $count
