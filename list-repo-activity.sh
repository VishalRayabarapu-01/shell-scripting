#!/bin/bash
username=$user
t=$token
r=$repo
api="https://api.github.com/repos/${username}/${r}/activity"
echo "url is $api"
echo $t
echo $r
echo $username
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $t" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  $api | jq '.[]  | "\(.id) \(.activity_type)"'