# fluentd/Dockerfile
FROM fluent/fluentd:v1.6-debian-1
USER root
RUN apt-get update && apt-get install build-essential -y
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "3.5.2"]
RUN ["gem", "install", "fluent-plugin-systemd", "--no-document", "--version", "1.0.2"]
USER fluent
