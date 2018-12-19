#!/bin/bash


tail -n0 -F "/var/log/file.log" | while read LINE; do
  (echo "$LINE" | grep -e "specific text") && curl -X POST --silent --data-urlencode \
    "payload={\"text\": \"$(echo $LINE | sed "s/\"/'/g")\"}" "(webhookURL)";
done

