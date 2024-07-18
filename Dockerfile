FROM debian:bookworm-20240701
RUN apt-get update
RUN apt-get install -y git
RUN useradd -u 1000 foo
USER foo
ENTRYPOINT ["tail", "-f", "/dev/null"]
