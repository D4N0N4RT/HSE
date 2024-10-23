min_length=8 
password=""

while true; do
    read -p "Введите длину пароля: " length

    if [ $length -lt $min_length ]; then
	echo "Длина пароля должна быть не меньше $min_length символов"
	continue
    fi;

    for (( i=1; i<=length; i++ ))
    do
	char=$(openssl rand -base64 1 | tr -dc 'a-zA-Z0-9' | head -c 1)
	password="${password}${char}"
    done

    echo "$password" > password.txt
    echo "Your password is in password.txt file"

    break
done  
