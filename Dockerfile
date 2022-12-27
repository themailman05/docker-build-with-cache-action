FROM docker:20.10.3

LABEL "maintainer"="whoan <liam@ziptech.io>"
LABEL "repository"="https://github.com/themailman05/docker-build-with-cache-action"

COPY docker-build.sh /docker-build.sh
COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache bash grep jq

ENTRYPOINT ["/entrypoint.sh"]
