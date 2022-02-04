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