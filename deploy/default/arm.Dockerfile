FROM quay.io/skilbjo/engineering:bash-arm-latest

COPY deploy                      /usr/local/deploy
COPY src                         /usr/local/src
COPY resources                   /usr/local/resources
