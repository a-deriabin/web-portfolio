# Проектирование информационных систем: задание 9

## Запуск

Запуск реестра:

```
docker swarm init
docker service create --name swarm-registry --publish published=5000,target=5000 registry:2 
```

Сборка и загрузка в реестр:

```
docker-compose build
docker-compose push
```

Развёртывание кластера:

```
docker stack deploy --compose-file docker-compose.yaml web-swarm
```

## Проверка

Эта команда должна выводить список работающих сервисов:

```
docker stack services web-swarm
```

Приложение должно быть доступно по адресу http://127.0.0.1

## Удаление

```
docker stack rm web-swarm
docker service rm web-swarm
docker swarm leave --force
```
