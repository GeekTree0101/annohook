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

COPY runner.sh /
ENTRYPOINT ["/runner.sh"]