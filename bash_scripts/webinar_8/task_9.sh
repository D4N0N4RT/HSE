read -p "Введите команду: " command

eval $command &
echo "pid: $!"
