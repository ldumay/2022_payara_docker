# Guide d'utilisation de Payara Micro sur Docker

Anciens dépots à supprimer :

- [Learn Payara](https://github.com/ldumay/2022_payara_learn)
- [Guide Docker](https://github.com/ldumay/docker_guide)

## 1 - Pré-requis

Docker - disponible [ici](https://www.docker.com/get-started)

> NB : pour pouvoir utiliser docker sur Windows, il est nécessaire d'avoir le noyau Linux d'installer. Si ce n'est pas le cas, vous pouvez télécharger l'installeur :
> - [depuis le guide Microsoft](https://docs.microsoft.com/fr-fr/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package)
> - ou [lien direct du package de mise à jour du noyau Linux WSL2 pour machines x64](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

## 2 - Les Etapes à suivre pour ce projet :

1. Vous aurez besoin de [quelques bases sur les conteneur de Docker](README_001.md)
2. Le but est de [réaliser une mini infrastructure](README_002.md)

Bonus :

3. Conteneur de Neo4j[README_004.md]

## 3 - Documentations

Voici toutes la documentation utilisé.

### Docs officiels

- Alpine Linux
  - [10 Alpine Linux apk Command Examples](https://www.cyberciti.biz/faq/10-alpine-linux-apk-command-examples/)
- Payara
  - Documentation officiel
    - [Payara Micro Docker Image Overview](https://docs.payara.fish/community/docs/documentation/ecosystem/docker-images/micro-image-overview.html)
  - Documentation officiel communauté
    - [Payara Micro dans Docker](https://blog.payara.fish/payara-micro-in-docker)

### Docker Hub
- Docker Hub
  - [Debian](https://hub.docker.com/_/debian)
  - [Jenkins](https://hub.docker.com/_/jenkins)
  - [Mariadb](https://hub.docker.com/_/mariadb)
  - [Neo4j](https://hub.docker.com/\_/neo4j)
  - [Payara Micro](https://hub.docker.com/r/payara/micro)

### Autres
- Blog
  - [Using Payara Micro to run Java EE based Microservices](https://medium.com/oracledevs/java-ee-based-microservice-on-oracle-cloud-with-payara-micro-32f8f823103f)