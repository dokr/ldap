FROM alpine:edge

MAINTAINER Chuanjian Wang <me@ckeyer.com>

RUN apk add --update openldap bash bash-completion openldap-clients openldap-dev && \
	rm -rf /var/cache/apk/*

CMD ["slapd","-d","2"]
