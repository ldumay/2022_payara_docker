# Les bases de Docker

[Retour au README principale](../../)

## Partie 4 - Les microservices

### 1 - Intérêts

Fractionner pour :
- mieux maitriser l'environnement :
    - le réseau
    - les versions
    - [...]
- adapter la ressource :
    - plus de produits
    - plus de serveurs
- augmentation de la vitesse de déploiement
- réduction des [SPOF (single point of failure)](https://fr.wikipedia.org/wiki/Point_de_d%C3%A9faillance_unique)

### 2 - Exemple simple

#### 2.1 - Contenu

Contenu de l'exemple :
- 1 page web à mettre à jour
- 2 variables calculées (bash)
- 3 conteneurs :
    - 1 serveur web nginx (affichage de la page)
    - 2 conteneurs php (workers) => 1 par variable

Si vous avez cloner le dépôt, chaque élément nécessaires ce trouve dans le dossier **/microservices_demo/**] : [demo](/microservices_demo/)

Voici l'arborescence du dossier :

```
microservices_demo % tree 
.
├── serveurweb
│   └── dockerfile
├── worker1
│   ├── affichage.php
│   ├── dockerfile
│   └── rollon.sh
└── worker2
    ├── affichage.php
    ├── dockerfile
    └── rollon.sh

3 directories, 7 files
```
