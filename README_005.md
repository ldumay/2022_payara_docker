# Les bases de Docker

[Retour au README principale](../../)

## Partie 5 - L'historique et logs d'une images ou d'un conteneur

### 1 - Vérifier une image ou d'un conteneur

#### 1.1 - Lecture de l'historique d'une image

La commande ci-dessous afficherage les derniers modification d'une image

```
docker history <nom_image>:<version_image>
```

> NB : Celle-ci ne peut être effectuer pour un conteneur.

#### 1.2 - Lecture des logs d'une image ou d'un conteneur

Les commandes ci-dessous afficherage les derniers exécution d'une image ou conteneur

=> Pour un conteneur :

```
docker logs <nom_conteneur>
```

=> Pour une image :

```
docker logs image <nom_image>
```

#### 1.3 - TUI - DocUI - Outil de lecture d'image docker

Installation de l'outil :

```
brew install docui
```

Exécution de l'outil :

```
docui
```

Visuel de l'outil :

![docui](/img_readme/docui.gif)

Source - GitHub - [docui](https://github.com/skanehira/docui)