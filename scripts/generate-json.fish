#!/usr/bin/env fish
#  yq -o json -p yaml ./messages/message.yaml > ./message.json
 while true
  fswatch --one-event -e ".*" -i "\.yaml\$" ./resume.yaml
  yq -o json -p yaml ./resume.yaml > ./resume.json
end

