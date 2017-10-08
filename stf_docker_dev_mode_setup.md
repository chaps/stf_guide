# Setup docker development mode.

## Use this guide if you want to setup an stf instance/service system on development mode running over docker.

### Disclaimer:
 - The following guide was used on a machine running Ubuntu server 16.04

### Requirements:
- Docker installed
- Docker compose installed

### Run Steps:
- (Assuming you have docker installed)
-  Copy the [docker compose yaml](src/utils/stf_dev_docker_compose/docker-compose.yaml) to your server
-  Go to the directory that contains the docker-compose.yaml file you just copied.
- set the environment variable for the current shell session so it can be used in the docker-compose file.
 - ```export PUBLICIP=insert.your.ip.here```
-  Run with the following command:
 - ```docker-compose up```

## Test
- You should be able to access the stf service via a web browser pointing to
your ip and the port 7100.
```http://THE.HOST.IP.ADDRESS:7100```
