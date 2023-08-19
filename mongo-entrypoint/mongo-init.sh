#!/usr/bin/env bash
echo "Creating mongo users..."
mongosh --authenticationDatabase admin --host localhost -u superUser -p superUserPass todolistDB --eval "db.createUser({user: 'ownerUser', pwd: 'ownerUserPass', roles: [{role: 'readWrite', db: 'todolistDB'}]});"
echo "Mongo users created."