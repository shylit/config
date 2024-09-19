#!/bin/bash

# Проверка наличия аргументов
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file1> <file2> ... <fileN>"
    exit 1
fi

# Проверка каждого переданного файла
for file in "$@"; do
    # Проверка расширения файла
    if [[ "$file" =~ \.(c|js|py)$ ]]; then
        # Проверка существования файла
        if [ ! -f "$file" ]; then
            echo "$file: File not found!"
            continue
        fi

        # Чтение первой строки файла
        first_line=$(head -n 1 "$file")
        
        # Проверка комментария в первой строке
        if [[ "$file" == *.c ]]; then
            if [[ "$first_line" =~ ^\s*// ]]; then
                echo "$file: Comment found"
            else
                echo "$file: No comment in the first line"
            fi
        elif [[ "$file" == *.js ]]; then
            if [[ "$first_line" =~ ^\s*// ]]; then
                echo "$file: Comment found"
            else
                echo "$file: No comment in the first line"
            fi
        elif [[ "$file" == *.py ]]; then
            if [[ "$first_line" =~ ^\s*# ]]; then
                echo "$file: Comment found"
            else
                echo "$file: No comment in the first line"
            fi
        fi
    else
        echo "$file: Unsupported file type"
    fi
done
