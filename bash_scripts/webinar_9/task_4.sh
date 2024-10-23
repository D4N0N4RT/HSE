read -p "Введите адрес сервера для проверки связи: " server_name

if [[ $server_name =~ ^[a-zA-Z0-9_-]{1,}\.(com|ru)$ ]]; then
	ping -c 1 $server_name
else
	echo "Введенный вами адрес не найден"
fi;
