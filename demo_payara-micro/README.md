# Version 1.0.0

## Création

```
cd demo_payara-micro
docker build -t payaramicro:1.0.0 .
docker run -tid --name payaramicro payaramicro:1.0.0
```

## Suppression

```
docker rm payaramicro
docker image rm payaramicro:1.0.0
```