#!/bin/bash

# Проверка наличия одного аргумента
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Путь к директории
directory=$1

# Проверка существования директории
if [ ! -d "$directory" ]; then
    echo "Directory not found!"
    exit 1
fi

# Поиск пустых текстовых файлов и вывод их имен
find "$directory" -type f -name "*.txt" -size 0 -print

# Проверка успешности выполнения команды
if [ $? -eq 0 ]; then
    echo "Search complete."
else
    echo "Failed to perform search."
    exit 1
fi
