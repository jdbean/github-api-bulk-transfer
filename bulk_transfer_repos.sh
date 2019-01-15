#!/bin/bash 

function git_repo_transfer(){ 
  curl -vL \
  	-u "$2:${GITHUB_SECRET}" \
    -H "Content-Type: application/json" \
    -H "Accept: application/vnd.github.nightshade-preview+json" \
    -X POST https://api.github.com/repos/$1/transfer \
    -d '{"new_owner":"'$3'"}' \
    | jq .
}

repos=$( cat ./repos.txt) 
for repo in $repos; do (git_repo_transfer "$repo" "$1" "$2"); done

