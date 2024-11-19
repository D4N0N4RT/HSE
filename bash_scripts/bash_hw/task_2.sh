# Считываем введенную директорию
read -p "Enter directory to add to PATH" dirpath
# Если введена существующая директория, то добавляем в файл .bashrc строку с добавлением введенной директорий в PATH. Без добавления данной строки в .bashrc внесенные нами изменения не сохранились бы после вывода из терминала
if [-d "$dirpath" ]; then
    echo "export PATH=$PATH:$dirpath" >> ~/.bashrc
    # Используем данную команду для применения изменений, внесенных в файл .bashrc без необходимости выхода терминала
    source ~/.bashrc
else
    echo "Not a directory or does not exist"
fi

