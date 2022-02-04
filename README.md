# Guide d'utilisation de Payara Micro sur Docker

Anciens dépots à supprimer :

- [Learn Payara](https://github.com/ldumay/2022_payara_learn)
- [Guide Docker](https://github.com/ldumay/docker_guide)

## 1 - Pré-requis

Docker - disponible [ici](https://www.docker.com/get-started)

> NB : pour pouvoir utiliser docker sur Windows, il est nécessaire d'avoir le noyau Linux d'installer. Si ce n'est pas le cas, vous pouvez télécharger l'installeur :
> - [depuis le guide Microsoft](https://docs.microsoft.com/fr-fr/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package)
> - ou [lien direct du package de mise à jour du noyau Linux WSL2 pour machines x64](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

## 2 - Les conteneurs Docker

### 2.1 - Création d'un nouveau conteneur

Pour pouvoir un nouveau conteneur, il est néceassaire d'avoir une image. L'avantage est que docker est directement relier au Hub Docker (central de conteneur).

Vous pouvez-vous donc créer un nouveau conteneur via la commande ci-dessous :

```
docker run <image>
```

Cette commande télécharge directement l'image si elle n'a pas télécharger auparavant.

Si vous désirez tout de même télécharger une image, voici la commande ci-dessous :

```
docker pull <image>
```

## 3 - Mini projet - Communication entre 2 conteneurs

### 3.1 - Création d'un docker Debian

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

### 3.2 - Création d'un docker Payara Micro

On va créer un conteneur debian nommé **payara_micro**.

```
docker run -di --name payara_micro_1 -p 8080:8080 payara/micro
```

#### 3.2.1 - Vérification de l'OS :

```
cat /etc/os-release
```
Résultat
```
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.14.2
PRETTY_NAME="Alpine Linux v3.14"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://bugs.alpinelinux.org/"
```

#### 3.2.2 - Ajout d'un package

```
apk add <package>
```

#### 3.2.3 - Connexion au conteneur

##### 3.2.3.1 - Connexion normal

```
docker exec -it <container> /bin/sh
```

##### 3.2.3.2 - Connexion en tant qu'Admin

```
docker exec -u 0 -it <container> /bin/sh
```

##### 3.2.3.3 - Transfert de l'application au docker

Copie d'une application **war** au dossier de déploiements Payara

```
docker cp <le_path_de_votre_appli>/<votre_appli_java>.war <container>:/opt/payara/deployments/
```

##### 3.2.3.4 - Démarrer le docker

```
docker run -p 8080:8080 \
 -v ~/payara-micro/applications:/opt/payara/deployments \
 payara/micro --deploy /opt/payara/deployments/<app>.war
```

---
---
---


## [En cours]

```
mtl@MacBook-Pro-LDumay ~ % docker container list

CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                              NAMES
78921b98e444   payara/micro   "/bin/sh entrypoint.…"   25 seconds ago   Up 24 seconds   6900/tcp, 0.0.0.0:8080->8080/tcp   gifted_mayer

mtl@MacBook-Pro-LDumay ~ % docker exec -it 78921b98e444 /bin/sh   
```

```
java -jar payara-micro.jar --addJars deployments/
```



### 3.3 - Quelques commandes

La liste des conteneurs

```
docker container list
```

Démarrer, Redémarrer, Stopper un conteneur

```
docker conainter start|restart|stop <container>
```

Renommer un conteneur

```
docker rename <conteneur> <nouveau_nom>
```

Connexion à un conteneur

```
docker exec -it <conteneur> bash
```

---

https://medium.com/oracledevs/java-ee-based-microservice-on-oracle-cloud-with-payara-micro-32f8f823103f

---

TEMP

java -jar payara-micro.jar --deploy deployments/YamaSoft-1.0.war

java -Xms2048M -Xmx2048M -jar payara-micro-5.2021.10.jar --deploy YamaSoft-1.0.war



---
---
---




## Documentations

Voici toutes la documentation utilisé.

### Docs officiels

- Documentation officiel
  - [Payara Micro Docker Image Overview](https://docs.payara.fish/community/docs/documentation/ecosystem/docker-images/micro-image-overview.html)
- Documentation officiel communauté
  - [Payara Micro dans Docker](https://blog.payara.fish/payara-micro-in-docker)

### Docker Hub
- Docker Hub
  - [Payara Micro](https://hub.docker.com/r/payara/micro)