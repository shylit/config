#!/bin/bash

# Проверка наличия одного аргумента
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

file=$1

# Проверка существования файла
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

# Извлечение идентификаторов из файла
grep -oE '\b[a-zA-Z_][a-zA-Z0-9_]*\b' "$file" | \
    grep -vE '^[0-9]' |                            # Исключаем слова, начинающиеся с цифры
    sort | uniq                                    # Сортировка и удаление повторов
