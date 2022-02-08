# Les bases de Docker

[Retour au README principale](../../)

## Partie 1 - Les Conteneurs

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

### 1.2 - Gestion des conteneurs

#### 1.2.1 - La liste des conteneurs

Le conteneur est automatiquement démarrer et maintenu en activité.

Il est possible de vérifier l'activité des conteneur avec la commande :

```
docker ps
```

> **Remarque** : ajouter l'option -a pour voir tous les conteneurs actif ou non

OU

```
docker container list
```

Vous devriez obtenir :

```
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                              NAMES
78921b98e444   payara/micro   "/bin/sh entrypoint.…"   25 seconds ago   Up 24 seconds   6900/tcp, 0.0.0.0:8080->8080/tcp   gifted_mayer
```


#### 1.2.2 - Démarrer, Redémarrer, Stopper un conteneur

```
docker conainter start|restart|stop <container>
```

#### 1.2.3 - Renommer un conteneur

```
docker rename <conteneur> <nouveau_nom>
```

#### 1.2.4 - Connexion au conteneur

Pour effectuer une connexion **normal** à un conteneur.

```
docker exec -it <container> /bin/sh
```

Pour effectuer une connexion **super admin** à un conteneur.

```
docker exec -u 0 -it <container> /bin/sh
```

### 1.3 - Intégralité complète d'un conteneur

```
docker inspect
```

Exemple :

```
docker inspect debian
[
    {
        "Id": "a8fd93e56b7e252f5e7fa461818c200a7942a19b14cf6f3ec882ca38bf43416a",
        "Created": "2022-02-04T16:18:41.4584788Z",
        "Path": "bash",
        [...],
        "HostConfig": {
            [...],
            "NetworkMode": "default",
            "PortBindings": {
                "80/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "80"
                    }
                ]
            },
            [...],
        "Mounts": [],
        "Config": {
            "Hostname": "a8fd93e56b7e",
            [...],
            "Image": "debian",
            [...]
        },
        "NetworkSettings": {
            [...],
            "Ports": {
                "80/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "80"
                    }
                ]
            },
            [...],
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.2",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:02",
            "Networks": {
                "bridge": {
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.2",
                    [...]
                }
            }
        }
    }
]
```

### 1.4 - Transfert de fichier vers un conteneur

```
docker cp <path_du_fichier>/<fichier> <container_cible>:<path_du_dossier_cible>
```

> *path : chemin d'un fichier

### 1.5 - Utilisation d'un conteneur

#### 1.5.1 - Vérification de l'OS :

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

#### 1.5.1 - Ajout d'un package

Contrairement à aux distributions linux de Debian à Ubuntu, le gestionnaire des paquets s'effectue via la commande ci-dessous.

```
apk add <package>
```