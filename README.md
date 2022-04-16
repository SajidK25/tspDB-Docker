TSP-DB

# How to use this images
## First clone the repo
```
git clone https://github.com/SajidK25/tspDB-Docker.git
cd tspDB-Docker
```
## Build image
```
docker build -t tspdb .
```
    ### Check image details
    ```
        docker images
    ```
        REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
        tspdb        latest    1e543cae950c   25 minutes ago   1.28GB
        <none>       <none>    4124eb1c189d   28 minutes ago   1.28GB
        ubuntu       focal     825d55fb6340   10 days ago      72.8MB
    ```
## Run the container
```
docker run -it tspdb bash
```
```
 * Starting PostgreSQL 12 database server                                     [ OK ] 
psql (12.9 (Ubuntu 12.9-0ubuntu0.20.04.1))
Type "help" for help.

postgres=#
```



