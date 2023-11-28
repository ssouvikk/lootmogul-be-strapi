# 🚀 Getting started with Strapi

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/dev-docs/cli) (CLI) which lets you scaffold and manage your project in seconds.

## Development Environment

- Docker (version 24.0.7)
- Docker Compose (version v2.23.0-desktop)


## Set Up
- copy & create .env file from .env.example & configure


## Run application:

```bash
docker compose up
# OR
sudo docker compose up
```


## Rebuild & run:
```bash
docker compose up --build
# OR
sudo docker compose up --build
```


## DB GUI connection:
```bash
http://localhost:8001/
```
Connect to DB GUI as like connecting with localhost



## Start terminal session & run any command
```bash
docker exec -it <container_name> sh
# OR
sudo docker exec -it <container_name> sh
```
Container/service name can be found in docker-compose file. All the following action can be done with this:

- install package
- uninstall package
- build application
- migrate
- seed

---

Tip:
- come out from terminal => "Ctrl + D"
- change anything via terminal (install/uninstall packages) => build (change will be reflected)