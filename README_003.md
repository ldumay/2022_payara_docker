# Les bases de Docker

[Retour au README principale](../../)

## Partie 3 - Les Couches (layers)

### 1 - Les différents types de couches

- la lecture seule (image)
- la lecture-écriture (conteneur)

### 2 - Partage de couches

Présentation de couches en lecture

![couche_lecture](/img_readme/couche_lecture.png)

Présentation de couches en écriture

![couche_ecriture](/img_readme/couche_ecriture.png)

### 3 - Distingués les couches

Dans un dockerfile, chaque étapes sont des couhes.

Exemple de couches d'une image:

```
docker history debianldumay:v1.0   
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
6ab23617e4bc   58 minutes ago   RUN /bin/sh -c apt update && apt upgrade && …   107MB     buildkit.dockerfile.v0
<missing>      58 minutes ago   MAINTAINER ldumay                               0B        buildkit.dockerfile.v0
<missing>      13 days ago      /bin/sh -c #(nop)  CMD ["bash"]                 0B        
<missing>      13 days ago      /bin/sh -c #(nop) ADD file:9cca7f8e4abcd8309…   124MB     
```

> **NB** : 
>   - Les couches sont limités à 127.
>   - Les `<missing>` ne sont pas des couches mais les sources de l'image.
>   - Les `COMMENT` regroupant des `<id>`(tel que `6ab23617e4bc`) sont des couches.

### 4 - Docker <=> Git

Pour chaque conteneur, docker possède une propriété identique à git, celle de versionné et suivre les évolutions d'un conteneur pour pouvoir les rénvoyé sur un dépôt.

Donc, après connexion à un conteneur, il est possible de faire :

```
docker diff <votre_conteneur>
```

Exemple de résultat de la commande.

```
C /root
A /root/.bash_history
C /tmp
A /tmp/winstone16813512287059286939.jar
A /tmp/hsperfdata_jenkins
A /tmp/hsperfdata_jenkins/8
A /tmp/jetty-0_0_0_0-8080-war-_-any-4811114698761988599
```