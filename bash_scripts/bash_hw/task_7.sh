# Добавляем команду по инициализации нового alias в файл .bashrc
echo "alias ll='ls -la'" > ~/.bashrc
# Фиксируем внесенные изменения
source ~/.bashrc
# Выводим существующие alias’ы
alias
