#!/usr/bin/env fish
curl "https://gist.githubusercontent.com/redaphid/b5592ed71c1fec8c2d3fa321a87bcbb4/raw/resume.json" > resume.json
git add .
git commit -am "updated resume from gist"
git push