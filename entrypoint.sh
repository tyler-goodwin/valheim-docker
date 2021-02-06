#!/bin/bash
steamcmd +login anonymous +force_install_dir /app/valheim +app_update 896660 validate +exit

cd /app/valheim

while [ true ]; do
  echo "Starting server"
  ./valheim_server.x86_64 -name "$NAME" -port 2456 -world "$WORLD" -password "$PASSWORD" -nographics -batchmode > /dev/null
  sleep 1
  echo "-----------------------------------------"
  echo "Game crashed!"
  echo "Restarting in 3 seconds......"
  echo "-----------------------------------------"
  sleep 3
done