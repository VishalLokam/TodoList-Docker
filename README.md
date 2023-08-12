# TodoList-Docker
This repository is create to Dockerize the TodoList web application.  
This web app used NodeJS, EJS and MongoDB.  

## To run this web application:-
1. Run the command ```npm i``` to install all the dependencies.
2. Create a MongoDB database named "todolistDB"
2. Create .env file in the parent directory.
3. Insert environment value as ```MONGODB_ATLAS_CONNECTION_STRING=<your_connection_string>```
3. Run the command `node app.js`

## To run using docker command:-
1. Run the below command.
```docker
docker container run -d -p 80:3000 --name todolist -e MONGODB_ATLAS_CONNECTION_STRING="<connection_string>/todolistDB" vishallokam/todolist-docker:latest
```
> This command will create a container that listens on port `80` on the host. Then the traffic is routed to the port `3000` of the container. On port `3000` NodeJS server is listening for requests.


2. Open the browser and put the url as shown below
`http://localhost/80` or `http://<ip_address>/80`

> here `<ip_address>` will the ip address of your server


