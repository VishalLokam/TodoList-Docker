TodoList-Docker
This repository is create to Dockerize the TodoList web application.  
This web app used NodeJS, EJS and MongoDB.  

Functionality implemented
- [x] Create a web application that uses a database
- [x] Create a Dockerfile and publish the docker image on the docker hub
- [x] Add MongoDB RBAC 
- [x] Implement secrets


## To run using compose file
1. Download the `docker-compose.yml` and `mongo-entrypoint` folder in a same root directory
2. Create 2 text files `mongo_root_username.txt` and `mongo_root_password.txt` in a secrets folder.
3. In "mongo-init.sh" file inside `mongo-entrypoint` folder update the command 
    ```shell
    mongosh --authenticationDatabase admin --host localhost -u superUser -p superUserPass todolistDB --eval "db.createUser({user: 'devUser', pwd: 'devUserPass', roles: [{role: 'readWrite', db: 'todolistDB'}]});"
    ```
    Update the `superUser` to environment variable `MONGO_INITDB_ROOT_USERNAME`'s value in `docker-compose.yml` file. `superUserPass` to environment variable `MONGO_INITDB_ROOT_PASSWORD`'s value `docker-compose.yml`  

    To add users use  [--eval](https://www.mongodb.com/docs/mongodb-shell/reference/options/#std-option-mongosh.--eval). Add users by specifying relevant information in [db.createUser](https://www.mongodb.com/docs/manual/reference/method/db.createUser/). For more information on RBAC checkout [MongoDB RBAC](https://www.mongodb.com/docs/manual/core/authorization/) 

4. Also update the relevant information for `healthcheck` in `docker-compose.yml`  

5. Run command `docker compose up`

## Additional resources
[My Blog](https://medium.com/@vishalvikaslokam/deploying-mongodb-using-docker-with-authentication-enabled-d20ec1256623)  
[Mongo Docker Image](https://hub.docker.com/_/mongo)   
[Volumes and Bind mount](https://www.atatus.com/blog/docker-volumes-vs-bind-mounts/#:~:text=Compared%20to%20Bind%20Mounts%2C%20Volumes,storage%20on%20your%20local%20machine.)


