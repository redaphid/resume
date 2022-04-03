#!/usr/bin/env fish
for t in (cat ./themes.json | jq -r .[])
  npx resume-cli export --theme $t "./out/$t.html"&
end
