# Mini projet - Construction d'une mini infrastructure

## 1 - Création d'un docker Debian

On va créer un conteneur debian nommé **debian**.

```
docker run -di --name debian -p 80:80 debian
```

> **Options de la commande** :
> - **-di** :
>   - [...] 
> - **--name debian** :
>   - permet de donner un précis le nom du conteneur
> - **-p 80:80** :
>   - permet de précier le port de communication interne et externe du conteneur

Le conteneur est automatiquement démarrer et maintenu en activité.

Il est possible de vérifier l'activité des conteneur avec la commande :

```
docker ps
```

OU

```
docker container list
```

Vous devriez obtenir :

```
CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS          PORTS                NAMES
a8fd93e56b7e   debian    "bash"    10 minutes ago   Up 10 minutes   0.0.0.0:80->80/tcp   debian
```

## 2 - Création d'un docker Jenkins

On va créer un conteneur debian nommé **jenkins**.

```
docker run -di --name jenkins -p 8080:8080 -p 50000:50000 -v /your/home:/var/jenkins_home jenkins:2.60.3
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
---

TEMP

```
java -jar payara-micro.jar --addJars deployments/
```

java -jar payara-micro.jar --deploy deployments/YamaSoft-1.0.war

java -Xms2048M -Xmx2048M -jar payara-micro-5.2021.10.jar --deploy YamaSoft-1.0.war