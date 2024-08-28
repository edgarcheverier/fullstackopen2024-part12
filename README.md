# Notes
- A container runs the software using the host operating system, whereas VM's run multiple operating systems on a single physical machine.
- Images include all of the code, dependencies and instructions on how to run the application, images are immutable files.
- A container is a runtime instance of an image, containers package software into standardized units.
- The Docker engine take care of turning the immutable files called images into containers.
- Docker daemon is a background service that pull images, create containers, makes sure the containers are running and streams the executable outputs to the
  Docker client.
- Docker client is used to interact with the Docker daemon.
- Docker Compose is a tool to orchestrate (control) multiple containers at the same time.
- A Dockerfile is a text file that contains all of the instructions for creating an image.

# Commands
- `docker container run --rm <image-name>`: Create a container using an image, if the image is not found on the machine, it will try to download the image from
  the registry Docker Hub, the --rm flag will remove the container after execution.
- `docker container ls -a` OR `docker ps -a`: Will list all the containers exited or up.
- `docker start <container-id>` OR `docker start <container-name>`: Will start a container.
- `docker start -i <container-id>` OR `docker start -i <container-name>`: Will start a container in interactive mode.
- `docker kill <container-id>` OR `docker kill <container-name>`: It sends a signal SIGKILL to the process forcing it to exit, and that causes the container
  to stop.
- `docker commit <container-id> <new-image-name> `: Create a new image from a container.
- `docker container run -it --name hello-node node:20 bash`: Will create crate a container with the name hello-node using the image node:20 and will run the
  container in interactive mode, and finally it will execute the command bash when the container start.
- `docker container cp ./<local-file-name> <container-name>:/usr/src/app/<container-file-name>`: Copay a file from your own machine to a container.
- `docker build -t <new-image-name> .`: Create an image using a `Dockerfile`, the `-t` flag is for defining a name for the new image and the dot `.`
  means the Dockerfile is in the same directory where the command is running.

# Dockerfile instructions
- `FROm`: It tells Docker the base image to use e.g. node:20.
- `WORKDIR`: It sets the working directory, if the directory doesn't exists in the base image, it will be automatically created. To check all the
  directories and files from a base image you can run `docker run <base-image> ls` e.g. `docker run node:20 ls`.
- `COPY`: It tells Docker to copy a file from the host machine to a file in the image.
- `CMD`: It tells Docker what to run when the command `docker run <image-name>` is used, this default command can be overwritten, for example
  `docker run <image-name> bash` will run bash instead of the CMD value.
- Example: Using the base image `node:20`, as a working directory `/usr/src/app`, copying the file `./index.js` from the host machine to the file
  `./index.js` in the image and finally executing `node index.js` when running the command `docker run <image-name>`.
  ```
    FROM node:20

    WORKDIR /usr/src/app

    COPY ./index.js ./index.js

    CMD node index.js
  ```
