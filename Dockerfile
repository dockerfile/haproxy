#
# Haproxy Dockerfile
#
# https://github.com/dockerfile/haproxy
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Haproxy.
RUN apt-get install -y haproxy
RUN sed -i 's/^ENABLED=.*/ENABLED=1/' /etc/default/haproxy

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
