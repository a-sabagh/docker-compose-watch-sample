FROM debian:13

COPY ./etc/ /app/etc

COPY ./src/ /app/src

WORKDIR /app

# RUN apt update && apt install -y procps

# CMD [ "bash", "-c", "pwd && ls -la && bash" ]

COPY ./docker-tmp-entrypoint.sh /usr/local/bin/docker-tmp-entrypoint

RUN chmod +x /usr/local/bin/docker-tmp-entrypoint

CMD [ "docker-tmp-entrypoint" ]