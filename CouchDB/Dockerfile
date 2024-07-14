FROM apache/couchdb:latest

# Copie des fichiers de configuration
COPY run.sh /run.sh

# Rendre le script exécutable
RUN chmod +x /run.sh

# Exposer le port CouchDB
EXPOSE 5984

# Point d'entrée
CMD [ "/run.sh" ]
