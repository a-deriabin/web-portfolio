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

## Сравнение с Kubernetes

В случае использования Kubernetes, процесс был бы очень схожим.

Инициализация:

`sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=[NODE_IP_ADDRESS]`

Настройка сети:

`kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml`

Создание worker nodes:

`kubeadm token create`

Docker Compose можно автоматически конвертировать в набор Kubernetes-файлов конфигурации для каждого из сервисов:
`kompose convert -f docker-compose.yaml`

На мой взгляд, Docker Swarm выглядит проще для изучения и начала работы, однако, Kubernetes имеет более богатый инструментарий и, возможно, более удобен для сложных задач.
