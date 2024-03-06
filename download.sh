#!/bin/zsh

url_list=(
  urls
)

for url in "${url_list[@]}"; do
  yt-dlp "$url"
done

webhook=https://discord.com/api/webhooks/1214979654864076890/bnUWjpwQ9AVkR1LfPNtdG6nj-PzhyFHxfeaMEjaodb2wdApMOdgj3us8BK_m2MAbt9Fa
curl -H "Content-Type: application/json" -X POST -d '{"content":"'"Download Done!"'"}' $webhook