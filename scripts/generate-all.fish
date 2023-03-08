#!/usr/bin/env fish
nvm use 16
mkdir -p out
rm out/*
for t in (cat ./themes.json | jq -r .[])
  echo "generating theme $t"
  npx resume-cli export --theme $t "./out/$t.html"
end
npx resume-cli export --theme ace "./out/ace.html"
