# Diplom

### Run project:

1. проверить чтоб был установлен docker и docker-compose

2. скопировать файл docker-compose.yaml-example(это для линукс-систем, для виндовс систем: docker-compose.yaml-example-windows) и назвать его docker-compose.yaml

3. в скопированном файле вписать пароли и логины(в соответствующих местах) там где необходимо. Пароли и логины совершенно любые, главное чтоб их не было в docker-compose.yaml-example

4. зайти в src/_config сделать копию и переименовать app_config.ini-example в app_config.ini и ввести соответствующие данные, которые были указаны в docker-compose.yaml

5. в корне проекта вызвать команды:

```
docker-compose up --build
```

в другой консоли из корня проекта

```
docker-compose run app python manage.py migrate && docker-compose run app python manage.py createsuperuser
```

Сервер с проектом запущен на http://localhost:8000

Админ панель для БД на http://localhost:5050

Админ панель для RabbitMQ на http://localhost:15672

Все апи расписаны по маршруту http://localhost:8000 в swagger, там можно протестировать запросы и посмотреть все возможные ответы под каждый запрос.

### Additional info

Для удобства разработки можете вызвать комманду из корня:

```
virtualenv -p python3.7 .venv
```

```
. .venv/bin/activate (. .venv/Scripts/activate for Windows)
```

```
pip install --no-cache-dir -r requirements/dev.txt
```

Чтоб удалить содержимое докер контейнеров:

```
docker-compose down --rmi all -v --remove-orphans
```

