# Проектирование информационных систем: задание 5

Собрать образ из Dockerfile:
```
docker build -t itmo-dws-task7:1.0 .
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
docker tag itmo-dws-task7:1.0 itmoderiabin/itmo:itmo-dws-task7-1.0
docker push itmoderiabin/itmo:itmo-dws-task7-1.0
```


Загрузить образ из репозитория:
```
docker-compose -f docker-compose.yaml pull
```

Запустить контейнеры:
```
docker-compose -f docker-compose.yaml up -d
```

Остановить конкретный контейнер:
```
docker stop <container_id>
```

Список запущенных контейнеров с их id:
```
docker ps
```
