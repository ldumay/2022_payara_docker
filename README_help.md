# Docker Help

[Retour au README principale](../../)

## 1 - Options de la commande `run`

### 1.1 - Tel que (exemple) :

```
docker run -<vos_options> --<vos_options>
```

### 1.2 - Les options :

- **-d** :
    - [...]
- **-i** :
    - [...]
- **-t** :
    - [...]
- **--name <nom_du_conteneur>** :
   - permet de donner un précis le nom du conteneur
- **-p <port_conteneur_extérieur>:<port_conteneur_intérieur>** :
   - permet de précier le port de communication interne et externe du conteneur :
       - le port de **gauche** est le port **extéireur** au conteneur attaché à l'hôte docker
        - le port de **droite** est le port **intérieur** au conteneur attaché à application souhaité
- **--rm** :
    - [...]
- **-v <path_folder_hôte>:<path_folder_conteneur>** :
    - permet de partage de synchroniser des données entre le l'hôte et un conteneur à travers une dossier enregistré en tant que **volume** docker.

## 2 - Options de la commande `exec`

### 2.1 - Tel que (exemple) :

```
docker exec -<vos_options> --<vos_options>
```

### 2.2  -Les options :

- **-i** :
    - [...]
- **-t** :
    - [...]
- **-u 0** :
    - permet la connexion au conteneur en compte super admin **"root"**