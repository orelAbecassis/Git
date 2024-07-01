# Récupérer une image
FROM python:3.12-slim
LABEL authors="orelabk6"

# Ajouter dans un dossier / ou se site l'appli
WORKDIR /app
COPY . /app

# Copier ce qu'on a besoin de la machine locale (projet) vers l'image
COPY app.py requirements.txt /app/

# Installer les Requirements.txt
RUN pip install -r requirements.txt

# Ajouter un port
EXPOSE 5000

COPY . .

# Pour lancer l'appli
CMD ["python", "app.py"]
