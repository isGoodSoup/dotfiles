#!/usr/bin/env bash
COUNTDOWN_MAX=6

echo "Shutting down in $COUNTDOWN_MAX seconds..."
for ((i = $COUNTDOWN_MAX; i >= 0; i--)); do
  echo -ne "$i\r"
  sleep 1
done
echo Powering off systems
sleep 1
