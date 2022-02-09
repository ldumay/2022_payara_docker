# Les bases de Docker

[Retour au README principale](../../)

## Partie 2 - Les Images

### 1.1 - Création d'une image

#### a) A partir d'un conteneur

```
docker commit -m='<description>' --author='<author>' <id_du_conteneur_source> <nom_image>:<nb_version>
```

#### b) A partir d'un dockerfile

dockerfile :

- fichier de configuration
- objectif : création d'une image
- séquence d'instructions :
    - RUN : lancements de commandes (apt)
    - ENV : variables d'environnement
    - EXPOSE : expositions de ports
    - VOLUME : définition de volumes
    - COPY : cp entre host et conteneur
    - ENTRYPOINT : processus maîre
    - [...]
- Intérêts :
    - relancer une création d'image à tout moment
    - meilleur visibilité sur ce qui est fait
    - partage facile et possibilité de gitter
    - script d'édition de docker file (variables...)
    - ne pas se poser de question lors du *docker run* du conteneur
    - création images prod // dev - [CI // CD](https://fr.wikipedia.org/wiki/CI/CD) ![CI_and_CD](img_readme/CI_and_CD.png)

#### c) Exemple :

Exemple d'un **dockerfile** :

```
FROM <name_dépôt>
MAINTAINER <name_author>
RUN apt-get update \
&& apt-get install -y nano git \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
```

Exemple de commande d'exécution de compilation d'un **dockerfile** :

```
docker build -t <nom_image>:<version>
```

Un autre exemple est disponible dans le dossier **/dockerfile_demos/** : [dockerfile](/dockerfile_demos/dockerfile).

Si vous avier clone le dépôt sur votre machine, il est possible de compiler le dockerfile avec la commande si dessus :

```
docker build -t debianldumay:v1.0 .
```

> Attention, 2 points important :
> - placez-vous bien dans le dossier contenant le **dockerfile** pour pouvoir exécuter la commande
> - le "." est important pour.

Aide sur les dockerfile [ici](https://docs.docker.com/engine/reference/builder/#maintainer).

### 1.2 - Informations sur une images

Connaitre l'historique d'une image

```
docker history <image>
```

### 1.3 - Tester et fixer les vulnérabilités d'images

```
docker scan
```

### 1.3 - Suppresion d'une image

```
docker image rm <id_image>
```