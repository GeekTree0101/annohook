FROM alpine:latest

LABEL "com.github.actions.name"="Annohook"
LABEL "com.github.actions.description"="Source code annotations parsing and slack hook delivery"
LABEL "com.github.actions.icon"="book-open"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="http://github.com/Geektree0101/annohook"
LABEL "homepage"="http://github.com/Geektree0101/annohook"
LABEL "maintainer"="Geektreee0101<h2s1880@gmail.com>"

LABEL "Name"="Annohook"
LABEL "Version"="v1.0.0"

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN mkdir /usr/local/annohook/ && \
    cd /usr/local/annohook/ && \
    curl -s https://api.github.com/repos/Geektree0101/annohook/releases/latest | \
    sed -r -n '/browser_download_url/{/linux.tar.gz/{s@[^:]*:[[:space:]]*"([^"]*)".*@\1@g;p;q}}' | xargs wget && \
    tar xzf *linux.tar.gz -C /usr/local/annohook/ && \
    cp /usr/local/annohook/annohook_*_linux/annohook /usr/local/bin/ && \
    rm -rf /usr/local/annohook/

ADD runner.sh /
RUN chmod +x /runner.sh

WORKDIR /github/workspace
ENTRYPOINT ["/runner.sh"]