# Devel env


## Create Network

```sh
docker network create devel
```


## Services

```sh
make
```


## Local Domains

```sh
echo '127.0.0.1 traefik.artemis minio.artemis' | sudo tee -a /etc/hosts
```
