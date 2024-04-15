# Create a new image using alpine:3.19 as the base image
FROM alpine:3.19

# Update the repository indexes
RUN apk update

# Install OpenJDK 11
RUN apk add openjdk11

# Copy HellowWord.java from the host to the container's current directory
COPY HelloWorld.java .

# Compile the Java source
RUN javac HelloWorld.java

# Run the Java program when starting the container
ENTRYPOINT java HelloWorld
