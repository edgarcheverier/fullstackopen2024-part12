## Course notes
- A container runs the software using the host operating system, whereas VM's run multiple operating systems on a single physical machine.
- Images include all of the code, dependencies and instructions on how to run the application.
-  A container is a runtime instance of an image, containers package software into standardized units.
- The Docker engine take care of turning the immutable files called images into containers.
- Docker Compose is a tool to orchestrate (control) multiple containers at the same time.

- docker container run --rm <container-name> The --rm flag will remove the container after execution.
- docker container ls -a Will list all the containers exited or up.
- docker ps -a is the same as docker container ls -a

- docker start <container-id> OR docker start <container-name> Will start a container.
- docker start -i <container-id> OR docker start -i <container-name> Will start a container in interactive mode.

- docker commit <container-id> <new-image-name> Create a new image from a container.
