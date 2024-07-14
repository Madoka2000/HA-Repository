# Utilisez une image de base adaptée à votre architecture ARM (par exemple, Debian pour ARM)
FROM arm32v7/debian:bullseye

# Mettre à jour et installer les paquets nécessaires
RUN apt-get update \
    && apt-get install -y curl build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Téléchargez et installez CouchDB
RUN curl -L https://apache.mirror.digionline.de/couchdb/source/3.1.1/apache-couchdb-3.1.1.tar.gz -o couchdb.tar.gz \
    && mkdir -p /opt/couchdb \
    && tar -xzf couchdb.tar.gz -C /opt/couchdb --strip-components=1 \
    && rm couchdb.tar.gz \
    && cd /opt/couchdb \
    && ./configure \
    && make \
    && make install \
    && apt-get remove -y curl build-essential \
    && apt-get autoremove -y

# Exposer les ports nécessaires pour CouchDB
EXPOSE 5984 4369 9100 9101 9102 9103 9104

# Exécutez CouchDB lors du démarrage du conteneur
CMD ["/opt/couchdb/bin/couchdb"]
