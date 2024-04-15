# Docker Lab - HelloWorld

A sample Java program compiled and executed in a Docker container.

## Running on the host machine

### Prerequisites

- OpenJDK 11 or above

### Build and run

1. Compile the Java source.
   ```sh
   javac HelloWorld.java
   ```
2. Run the Java program.
   ```sh
   java HelloWorld
   ```
   You will see the following printed out:
   ```
   Hello World!
   ```

## Running in a Docker container

We will build a Docker image from the `Dockerfile`, then create a Docker container to run the Java program.

For more Dockerfile instructions, see [Dockerfile reference](https://docs.docker.com/reference/dockerfile/).

### Prerequisites

- Docker Desktop or Docker Engine

### Build and run

1. Build the Docker image from the `Dockerfile`.
   ```sh
   docker build -t helloworld .
   ```
2. Run a Docker container from Docker image `helloworld`.
   ```sh
   docker run helloworld
   ```
   You will see the following printed out:
   ```
   Hello World!
   ```
   Then the Docker container will stop.

## Docker CLI commands

For more commands, see [Docker CLI reference](https://docs.docker.com/reference/cli/docker/).

### Image

List images.

```sh
docker images
```

Remove one or more images.

```sh
docker rmi <IMAGE>

# Examples
docker rmi c53678d24ebc
docker rmi helloworld:latest
```

Remove dangling images.

```sh
docker rmi $(docker images -f "dangling=true" -q)
```

### Container

Run a container and run the command in the container.

```sh
docker run -it IMAGE COMMAND

# Examples
docker run helloworld ls
```

Run a container and start an interactive terminal session for the container. To exit out of the container's terminal session, type and enter `exit`.

```sh
docker run -it IMAGE

# Examples
docker run -it helloworld
```

List running containers.

```sh
docker ps
```

List all containers (running and stopped).

```sh
docker ps -a
```

Remove one or more containers.

```sh
docker rm CONTAINER

# Examples
docker rm a64c0c4ca0e9
docker rmi helloworld_container
```

Remove all containers (running and stopped).

```sh
docker rm $(docker ps -aq)
```
