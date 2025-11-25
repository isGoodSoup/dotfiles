#!/usr/bin/env bash
COUNTDOWN_MAX=6

echo "Shutting down in $COUNTDOWN_MAX seconds..."
for ((i = $COUNTDOWN_MAX; i >= 0; i--)); do
  echo -ne "$i\r"
  sleep 1
done
echo -e "\e[32mPowering off systems"
sleep 2
poweroff
