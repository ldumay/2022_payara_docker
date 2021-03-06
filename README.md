# Guide d'utilisation de Payara Micro sur Docker

## 0 - Pourquoi Docker ?

### VM (Mahcine Virtuel) vs Conteneur

![vm_vs_container](/img_readme/vm_vs_container.png)

Parce qu'un conteneur est beaucoup léger.

## 1 - Pré-requis

Docker - disponible [ici](https://www.docker.com/get-started)

> NB : pour pouvoir utiliser docker sur Windows, il est nécessaire d'avoir le noyau Linux d'installer. Si ce n'est pas le cas, vous pouvez télécharger l'installeur :
> - [depuis le guide Microsoft](https://docs.microsoft.com/fr-fr/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package)
> - ou [lien direct du package de mise à jour du noyau Linux WSL2 pour machines x64](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi)

## 2 - Les Etapes à suivre pour ce projet :

- 1 - Vous aurez besoin de quelques bases sur les conteneur et les images de Docker :
  - **[Requis]\*** - Partie 1 - [Les conteneurs](README_001.md)
  - **[Requis]\*** - Partie 2 - [Les images](README_002.md)
  - **[Requis]\*** - Partie 3 - [Les couches](README_003.md)
  - **[Requis]\*** - Partie 4 - [Les microservices](README_004.md)
  - **[Requis]\*** - Partie 5 - [L'historique et logs d'une images ou d'un conteneur](README_005.md)
  - Partie 6 - [Le cache](README_006.md)

> **NB** : Pour les points ci-dessous, il est nécessaie d'avoir des bases en docker. Dans le cas contraire, veuillez suivre les points **[Requis]\***.

- 2 - Ldumay - Payara Micro - [Un conteneur Apps Java JEE avec Payara Miro](/demo_ldpayaramicro/README.md)
- 3 - Ldumay - Payara Micro & MySQL & Monitoring - [Réaliser une mini infrastructure](README_TP.md)
- 4 - Bonus :
  - Liste d'images et de conteneurs [supplémentaires](README_bonus.md)
  - Help docker [ici](README_help.md)

## 3 - Documentations

Voici toutes la documentation utilisé.

### Source principal d'apprentissage :

- Youtube [TUTORIALS ET FORMATION DOCKER](https://www.youtube.com/playlist?list=PLn6POgpklwWq0iz59-px2z-qjDdZKEvWd)

### Docs officiels

- Alpine Linux
  - [10 Alpine Linux apk Command Examples](https://www.cyberciti.biz/faq/10-alpine-linux-apk-command-examples/)
- Docker Docs :
  - [Docs](https://docs.docker.com/)
- Payara
  - Documentation officiel
    - [Payara Micro Docker Image Overview](https://docs.payara.fish/community/docs/documentation/ecosystem/docker-images/micro-image-overview.html)
  - Documentation officiel communauté
    - [Payara Micro dans Docker](https://blog.payara.fish/payara-micro-in-docker)
- Payara via Docker - **PDF**
  - [Payara Micro](docs/Using-Payara-Micro-with-Docker2.pdf)
  - [Payara Server](docs/Introduction_to_Payara_Server_Docker_Nodes_&_Instances.pdf)

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

## 4 - Bonus - Liste des ports et protocoles (Common ports)

![Common ports](img_readme/common_ports.jpg)