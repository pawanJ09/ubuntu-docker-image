FROM ubuntu:20.04

WORKDIR /root

# Install utilities
RUN apt-get update && apt-get --assume-yes install curl
RUN apt-get update && apt-get --assume-yes install unzip
RUN apt-get update && apt-get --assume-yes install vim
RUN apt-get update && apt-get install -y openssh-client
RUN mkdir repos

# Install Python3
RUN apt-get update && apt-get --assume-yes install python3

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -f awscliv2.zip

# Install Git
RUN apt-get update && apt-get --assume-yes install git

ENTRYPOINT ["/bin/bash"]




