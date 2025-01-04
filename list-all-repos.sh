!/bin/bash


api=https://api.github.com

list_repo_url=$api/users/$username/repos

echo "username $username"
echo  "url is $list_repo_url"
arr=$(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $token" \
  H "X-GitHub-Api-Version: 2022-11-28" \
  $list_repo_url | jq -c '.[]')


echo $arr | while ISR= read i ;do
        echo $i | jq -r '"Name : \(.name)           Created at : \(.created_at)"'
done;