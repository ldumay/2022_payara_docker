# Docker Help

[Retour au README principale](../../)

## Options de la commande `Run`

### Tel que :

```
docker run -<vos_options>
```

### Les options :

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