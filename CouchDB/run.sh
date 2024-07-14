#!/bin/bash

# Lire les variables d'environnement
COUCHDB_USER=${COUCHDB_USER:-admin}
COUCHDB_PASSWORD=${COUCHDB_PASSWORD:-password}

# Démarrer CouchDB avec des informations d'identification d'administrateur
export COUCHDB_USER COUCHDB_PASSWORD
couchdb
