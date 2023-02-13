# Enhanced Ubuntu Container

This project lets you run a local docker container with some of the pre installed packages like, curl, unzip, vim, openssh, python3, git and awscli v2. Along with installing these utility packages it will also copy your aws credentials and ssh keys from local to the docker container so you can easily get started with running aws, git and python for development on your ubuntu docker container.

For security reasons the aws and git secrets are not built into the image and are applied when you run the docker based on your local configuration.

## Running the container locally

To start the container run the script as below:
```shell
/bin/bash ./run-docker-compose.sh
```

After the container is started you can connect using the command as below:
```shell
docker exec -it my-ubuntu-svc /bin/bash
```