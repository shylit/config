# Трисветов Ричард Вунгович, ИКБО-63-23
# Практическое занятие №2. Менеджеры пакетов.
Цель работы: Разобраться, что представляет собой менеджер пакетов, как устроен пакет, как читать версии стандарта semver. Привести примеры программ, в которых имеется встроенный пакетный менеджер.
## Задача №1
Вывести служебную информацию о пакете matplotlib (Python). Разобрать основные элементы содержимого файла со служебной информацией из пакета. Как получить пакет без менеджера пакетов, прямо из репозитория?

### Решение. 1 часть.
``` pip show matplotlib ```

### Результат.
```
(base) richardtrisvetov@MacBook-Air-3 prac2 % pip show matplotlib
Name: matplotlib
Version: 3.5.2
Summary: Python plotting package
Home-page: https://matplotlib.org
Author: John D. Hunter, Michael Droettboom
Author-email: matplotlib-users@python.org
License: PSF
Location: /Users/richardtrisvetov/opt/anaconda3/lib/python3.9/site-packages
Requires: cycler, fonttools, kiwisolver, numpy, packaging, pillow, pyparsing, python-dateutil
Required-by: seaborn
````

### Пояснение.
Name - название пакета.

Version - указывает текущую версию пакета.

Summary - краткое описание пакета.

Home-page - ссылка на официальный сайт проекта или репозиторий.

Author - имя автора или группы авторов, которые разработали пакет.

Author-email - контактный email автора или разработчиков.

License - лицензия, под которой распространяется пакет.

Location - путь к директории, где установлен пакет.

Requires - список зависимостей, необходимых для работы пакета.

### Решение. 2 часть.

Чтобы получить пакет matplotlib без использования менеджера пакетов, вы можете скачать его напрямую из репозитория.

` git clone https://github.com/matplotlib/matplotlib.git ` - создает локальную копию репозитория на пк.

` cd matplotlib ` - переход в директорию пакета

` python setup.py install ` - установка matplotlib
