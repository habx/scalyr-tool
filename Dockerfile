FROM python:3-alpine3.10

WORKDIR /bin
RUN  apk add --no-cache curl~=7 && \
    curl -s https://raw.githubusercontent.com/scalyr/scalyr-tool/master/scalyr > scalyr && \
    chmod u+x scalyr
ENTRYPOINT ["scalyr"]
