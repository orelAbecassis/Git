# README

## Récupérer une image Docker

Ce projet décrit comment créer une image Docker pour une application Python simple. Suivez les instructions ci-dessous pour configurer et exécuter l'application dans un conteneur Docker.

### Prérequis

- Docker doit être installé sur votre machine.
- Un fichier `app.py` contenant le code de votre application.
- Un fichier `requirements.txt` listant toutes les dépendances nécessaires.

### Structure du projet

Assurez-vous que votre projet a la structure suivante :


/votre-projet
  |-- app.py
  |-- requirements.txt
  |-- Dockerfile

### Instructions

1. **Créer le Dockerfile**

   Créez un fichier nommé `Dockerfile` à la racine de votre projet et ajoutez-y le contenu suivant :

   ```dockerfile
   FROM python:3.12-slim
   LABEL authors="orelabk6"

   WORKDIR /app

   COPY app.py requirements.txt /app/

   RUN pip install -r requirements.txt

   EXPOSE 5000

   COPY . .

   CMD ["python", "app.py"]


## Récupérer une image Docker

Ouvrez un terminal, naviguez jusqu'au répertoire de votre projet et exécutez la commande suivante pour construire l'image Docker :

sh
Copier le code
docker build -t nom-de-votre-image .
Exécuter le conteneur Docker

Après avoir construit l'image, exécutez la commande suivante pour lancer un conteneur basé sur cette image :

sh
Copier le code
docker run -p 5000:5000 nom-de-votre-image

Notes
WORKDIR /app : Définit le répertoire de travail dans le conteneur.
COPY app.py requirements.txt /app/ : Copie les fichiers nécessaires dans le conteneur.
RUN pip install -r requirements.txt : Installe les dépendances Python.
EXPOSE 5000 : Ouvre le port 5000 pour accéder à l'application.
CMD ["python", "app.py"] : Lance l'application Python.
Auteurs
orelabk6
Licence
Ce projet est sous licence MIT. Veuillez consulter le fichier LICENSE pour plus de détails.