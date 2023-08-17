#! /usr/bin/env bash
echo "Creating new user"
mongosh admin --localhost -u superUser -p superUserPass --eval "use todolistDB; db.createUser({user: 'ownerUser', pwd: 'ownerUserPass', roles: [{role: 'dbOwner', db: 'todolistDB'}]});db.createUser({user: 'readWrite', pwd: 'readWritePass', roles: [{role: 'readWrite', db: 'todolistDB'}]});"
echo "New user created"