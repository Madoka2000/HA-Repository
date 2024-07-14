#!/bin/bash

# Vérifier si les variables d'environnement sont définies
if [ -z "$COUCHDB_USER" ] || [ -z "$COUCHDB_PASSWORD" ]; then
  echo "COUCHDB_USER et COUCHDB_PASSWORD doivent être définis"
  exit 1
fi

# Remplacer les variables d'environnement dans le fichier local.ini
sed -i "s/\${COUCHDB_USER}/$COUCHDB_USER/" /opt/couchdb/etc/local.d/local.ini
sed -i "s/\${COUCHDB_PASSWORD}/$COUCHDB_PASSWORD/" /opt/couchdb/etc/local.d/local.ini

# Démarrer CouchDB
couchdb
