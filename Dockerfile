FROM alpine:3.21.3

RUN apk add --no-cache bash curl jq util-linux openssl

COPY ./pdsadmin.sh /usr/local/bin/pdsadmin
COPY ./commands /pdsadmin-commands

RUN chmod +x /usr/local/bin/pdsadmin
RUN chmod +x /pdsadmin-commands/*

ENTRYPOINT [ "/usr/local/bin/pdsadmin" ]
CMD [ "help" ]
