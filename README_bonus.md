# Liste d'images et de conteneurs

[Retour au README principale](../../)

## 1 - OS - Ubuntu

```
docker run ubuntu:focal-20211006
```

### 2 - OS - Debian

```
docker run --name debian debian
```

### 3 - Intégration - Jenkins

```
docker run -d -p --name jenkins 8080:8080 jenkins/jenkins:lts
```

Pour la configuration

```
docker exec -u 0 -it jenkins bash
```

Accès au service :

- Liens :
    - Statut et détail du service : [http://localhost:50000/](http://localhost:50000/)
    - Application du service : [http://localhost:8181/](http://localhost:8181/)

### 4 - NoSQL - MongoDB

```
docker run -d -p --name mongodb 27017:27017 mongo
```

### 5 - NoSQL - Neo4j

```
docker run --name noe4j --publish=7474:7474 --publish=7687:7687 neo4j
```

Résultat

```
2021-11-04 11:34:42.823+0000 INFO  Starting...
2021-11-04 11:34:46.382+0000 INFO  ======== Neo4j 4.3.6 ========
2021-11-04 11:34:49.267+0000 INFO  Initializing system graph model for component 'security-users' with version -1 and status UNINITIALIZED
2021-11-04 11:34:49.280+0000 INFO  Setting up initial user from defaults: neo4j
2021-11-04 11:34:49.282+0000 INFO  Creating new user 'neo4j' (passwordChangeRequired=true, suspended=false)
2021-11-04 11:34:49.296+0000 INFO  Setting version for 'security-users' to 3
2021-11-04 11:34:49.300+0000 INFO  After initialization of system graph model component 'security-users' have version 3 and status CURRENT
2021-11-04 11:34:49.307+0000 INFO  Performing postInitialization step for component 'security-users' with version 3 and status CURRENT
2021-11-04 11:34:49.707+0000 INFO  Bolt enabled on 0.0.0.0:7687.
2021-11-04 11:34:51.389+0000 INFO  Remote interface available at http://localhost:7474/
2021-11-04 11:34:51.393+0000 INFO  Started.
```

Vérification des conteneurs serveurs dans la liste des conteneurs.

```
mtl@mbp-ldumay ~ % docker ps 
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                                                      NAMES
7dbd36fa3e5a   neo4j     "/sbin/tini -g -- /d…"   59 seconds ago   Up 58 seconds   0.0.0.0:7474->7474/tcp, 7473/tcp, 0.0.0.0:7687->7687/tcp   ecstatic_moore
```

### Accès au serveur

- Lien : [http://localhost:7474/](http://localhost:7474/)