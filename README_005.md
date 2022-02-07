# Liste d'images et de conteneur

[Retour au README principale](../)

## 1 - Ubuntu

```
docker run ubuntu:focal-20211006
```

### 2 - Debian

```
docker run --name debian debian
```

### 3 - Jenkins

```
docker run -d -p --name jenkins 8080:8080 jenkins/jenkins:lts
```

### 4 - MongoDB

```
docker run -d -p --name mongodb 27017:27017 mongo
```