FROM ubuntu:latest
LABEL maintainer="Your Name <contact@techiescamp.com>"
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
# Copy the script to the container
COPY ./script.sh /
RUN chmod +x /script.sh
# Set the entrypoint to the script with CMD arguments
ENTRYPOINT ["/script.sh"]
CMD ["hulk", "batman", "superman"]