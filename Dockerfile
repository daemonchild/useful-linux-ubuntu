FROM ubuntu:18.04

# Update and get tools
RUN apt-get update -y && apt-get -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y net-tools iputils-ping mysql-client \
    && rm -rf /var/lib/apt/lists/*

# Do nothing much
CMD [ "tail", "-f", "/dev/null" ]