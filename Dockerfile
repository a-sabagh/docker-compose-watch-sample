FROM debian:13

COPY ./etc/ /app/etc

COPY ./src/ /app/src

WORKDIR /app

# RUN apt update && apt install -y procps

# CMD [ "bash", "-c", "pwd && ls -la && bash" ]