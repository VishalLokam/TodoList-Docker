#! /usr/bin/env bash
echo "Creating new user"
mongo admin --localhost -u superUser -p superUserPass --eval "db.createUser({user: 'ownerUser', pwd: 'ownerUserPass', roles: [{role: 'dbOwner', db: 'todolistDB'}]});db.createUser({user: 'readWrite', pwd: 'readWritePass', roles: [{role: 'readWrite', db: 'todolistDB'}]});"
echo "New user created"