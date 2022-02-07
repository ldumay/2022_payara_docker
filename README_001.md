# Les bases de Docker

## 1 - Les conteneurs Docker

### 1.1 - Création d'un nouveau conteneur

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

### 1.2 - Gestion des images et des conteneurs

#### 1.2 - A - Gestion des images

##### a) **[en cours ...]**

#### 1.2 - B - Gestion des conteneurs

##### a) La liste des conteneurs

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
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                              NAMES
78921b98e444   payara/micro   "/bin/sh entrypoint.…"   25 seconds ago   Up 24 seconds   6900/tcp, 0.0.0.0:8080->8080/tcp   gifted_mayer
```


##### b) Démarrer, Redémarrer, Stopper un conteneur

```
docker conainter start|restart|stop <container>
```

##### c) Renommer un conteneur

```
docker rename <conteneur> <nouveau_nom>
```

##### d) Connexion au conteneur

Pour effectuer une connexion **normal** à un conteneur.

```
docker exec -it <container> /bin/sh
```

Pour effectuer une connexion **super admin** à un conteneur.

```
docker exec -u 0 -it <container> /bin/sh
```

### 1.5 - Intégralité complète d'un conteneur

```
docker inspect
```

### 1.6 - Transfert de fichier vers un conteneur

```
docker cp <path_du_fichier>/<fichier> <container_cible>:<path_du_dossier_cible>
```

> *path : chemin d'un fichier


---

### 1.4 - Vérification de l'OS :

Pour savoir, il est possible de vérifier la version du noyau avec la commande ci-dessous.

```
cat /etc/os-release
```

Par défaut, le noyau Linux utilisé dans les conteneurs docker est **Alpine Linux**.

```
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.14.2
PRETTY_NAME="Alpine Linux v3.14"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://bugs.alpinelinux.org/"
```

### 1.3 - Ajout d'un package

Contrairement à aux distributions linux de Debian à Ubuntu, le gestionnaire des paquets s'effectue via la commande ci-dessous.

```
apk add <package>
```

### 1.6 - **[en cours ...]**