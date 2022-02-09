# Ldumay - Payara Micro
## Un conteneur Apps Java JEE avec Payara Miro

## 1 - Informations sur le conteneur

**Version** : 1.0.0
**Name** : LdumayPayaraMicro
**Description** :Conteneur pour Payara Miro
**OS** : Alpine Linux
**JDK** : 5.2021.10-jdk11
**Payara Micro** : 5.2021.10

## 2 - Configuration du conteneur

Le dockerfile est prêt, mais il est tout de même étidatble.

Le dossier **/apps_java_shared/** contient les applications Java JEE compilées au format .war

> **NB** : Pour le moment, liaison avec un dossier de l'hôte docker n'est pas encore vérifiée. Il faut donc ajouter les applications compilées avant la compilation du conteneur.

Le dossier **/apps_java_src/** contient la sources des petits projets de demo.

```
arborescence
```

## 3 - Exécution du conteneur

### 2.1 - Création du conteneur et de l'image

```
cd demo_ldpayaramicro
docker build -t ldpayaramicro:1.0.0 .
docker run -tid --name ldpm_1 -p 8080:8080 -p 3306:3306 ldpayaramicro:1.0.0
```

### 2.2 - Suppression du conteneur et de l'image

```
docker stop ldpm_1
docker rm ldpm_1
docker image rm ldpayaramicro:1.0.0
```

## 4 - Accès au Apps

L'url principale est http://localhost:8080/<nom_de_app>

- [http://localhost:8080/DemoWebApp](http://localhost:8080/DemoWebApp)
- [http://localhost:8080/WebDemo](http://localhost:8080/WebDemo)