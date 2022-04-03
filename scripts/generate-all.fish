#!/usr/bin/env fish
for t in (cat ./themes.json | jq -r .[])
  echo $t
end
