# Mini projet - Construction d'une mini infrastructure

[Retour au README principale](../../)

## 1 - Création d'un docker Debian

On va créer un conteneur debian nommé **debian**.

```
docker run -di --name debian -p 80:80 debian
```

## 2 - Création d'un docker MariaDB

On va créer un conteneur debian nommé **mariadb**.

```
docker run --detach --name mariadb --env MARIADB_USER=ldumay --env MARIADB_PASSWORD=test --env MARIADB_ROOT_PASSWORD=root -p 3306:3306 mariadb:latest
```

Pour se connecté au serveur mariadb, il faut connaitre l'**IP du conteneur**.

```
docker run -it --rm mariadb mysql -h 0.0.0.0:3306 -u ldumay -p
```

OU

```
docker stop mariadb
docker run -it --rm mariadb mysql -h 0.0.0.0:3306 -u root -p
```

## 2 - Création d'un docker Jenkins

On va créer un conteneur debian nommé **jenkins**.

```
docker run -di --name jenkins -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
```

## 3 - Création d'un docker Payara Micro

On va créer un conteneur debian nommé **payara_micro**.

```
docker run -di --name payara_micro_1 -p 8081:8081 payara/micro
```

### a - Transfert de l'application java au conteneur

Copie d'une application **war** au dossier de déploiements Payara

```
docker cp <le_path_de_votre_appli>/<votre_appli_java>.war <container>:/opt/payara/deployments/
```

### b - Démarrer le conteneur avec l'application

```
docker run -p 8080:8080 \
 -v ~/payara-micro/applications:/opt/payara/deployments \
 payara/micro --deploy /opt/payara/deployments/<app>.war
```

---
---

# TEMP

```
java -jar payara-micro.jar --addJars deployments/
```

java -jar payara-micro.jar --deploy deployments/YamaSoft-1.0.war

java -Xms2048M -Xmx2048M -jar payara-micro-5.2021.10.jar --deploy YamaSoft-1.0.war

---
---

# Essais :

Redémarrage avec persistance :

```
docker stop payara_micro_1
docker run -di --name payara_micro_1 -p 8081:8081 -v /Users/mtl/Projets/Docker/_docker_share_directory/apps_java_web:/opt/payara/deployments payara/micro
docker exec -u 0 -it payara_micro_1 sh 
```