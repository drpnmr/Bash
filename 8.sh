#!/bin/bash

locals=$(env | grep '^LC_')

if [[ -z "$locals" ]]; then
        echo "Переменные окружения, начинающиеся на 'LC_', не найдены."
        exit 0
fi

first_value=$(echo "$locals" | head -n 1 | cut -d= -f2)

while IFS= read -r line; do
        current_value=$(echo "$line" | cut -d= -f2)
        if [[ "$current_value" != "$first_value" ]]; then
                echo "Ошибка: Переменные окружения, начинающиеся на 'LC_', имеют разные значения."
                exit 1
        fi
done < <(echo "$locals")

echo "Все переменные окружения, начинающиеся на 'LC_', имеют одинаковое значение: $first_value"
exit 0
