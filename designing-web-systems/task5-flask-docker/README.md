# Проектирование информационных систем: задание 5

Собрать образ из Dockerfile:
```
docker build -t itmo-dws-task5:1.0 .
```

Вывести список имеющихся Docker образов:
```
docker images
```

Указать данные dockerhub-аккаунта:
```
docker login
```

Для загрузки в репозиторий:
```
docker tag itmo-dws-task5:1.0 itmoderiabin/itmo:itmo-dws-task5-1.0
docker push itmoderiabin/itmo:itmo-dws-task5-1.0
```


Загрузить образ из репозитория:
```
docker pull docker push itmoderiabin/itmo:itmo-dws-task5-1.0
```

Запустить контейнер (для доступа по адресу localhost:8080):
```
docker run -p 8080:80 itmoderiabin/itmo:itmo-dws-task5-1.0
```

Остановить контейнер:
```
docker stop <container_id>
```

Список запущенных контейнеров с их id:
```
docker ps
```
