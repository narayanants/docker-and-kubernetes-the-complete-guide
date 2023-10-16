FROM ubuntu:latest
LABEL maintainer="Your Name <contact@techiescamp.com>"
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
# Copy the script to the container
COPY ./test.sh /
RUN chmod +x /test.sh
# Set the entrypoint to the test with CMD arguments
ENTRYPOINT ["/test.sh"]
CMD ["hulk", "batman", "superman"]