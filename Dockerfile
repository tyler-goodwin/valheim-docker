FROM steamcmd/steamcmd:latest

RUN ln -s /root/.steam/steamcmd/linux64/steamclient.so  /usr/lib/x86_64-linux-gnu/steamclient.so

RUN mkdir -p /app/valheim
WORKDIR /app

COPY entrypoint.sh .

EXPOSE 2456

ENTRYPOINT ["./entrypoint.sh"]