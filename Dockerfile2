FROM centos:7
LABEL maintainer="Your Name <contact@techiescamp.com>"
RUN yum -y update
WORKDIR /app
COPY . .
# Copy the script to the container
COPY ./test.sh /
RUN chmod +x /test.sh
# Set the entrypoint to the test with CMD arguments
ENTRYPOINT ["/test.sh"]
CMD ["hulk", "batman", "superman"]
EXPOSE 2000