# modul7_github

## *ЗАДАНИЕ*

Создайте файл Dockerfile и укажите базовый образ, содержащий Python 3. Например: brunneis/python:3.8.3-ubuntu-20.04. Далее внутри Dockerfile вам нужно:

  примонтировать файлы .py и requirements.txt в файловую систему контейнера;
  с помощью pip установить requirements;
  пробросить порт из контейнера, на котором прослушивает API (опционально, т.к. можно указывать при запуске контейнера);
  запустить .py.
  После этого запустите контейнер и, в зависимости от реализации, протестируйте взаимодействие с API.
  Сконвертируйте zip-архив с проектом.
  
## *ВЫГРУЗКА ПРОЕКТА НА GITHUB*
  Создайте в своём профиле новый репозиторий.
  В этом репозитории добавьте архив проекта через Upload files.
  Сделайте коммит изменений (Commit changes).
  Отправьте ссылку на репозиторий с решением сквозной задачи на проверку ментору в форму ниже.

# *РЕШЕНИЕ*

  В работе будет испльзован scanner.py из сквозной работы модуля 6

## How to build

```bash
docker build -t scanner_tanya -f dockerfile .
```

## How to run:

scan:
```bash
docker run --rm -it --name scanner_tanya scanner_tanya scan -i 192.168.1.1 -n 3
```

sendhttp:
```bash
docker run --rm -it --name scanner_tanya scanner_tanya sendhttp -t https://google.com -m GET -hd Accept-Language:ru
```