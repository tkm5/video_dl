#!/bin/zsh

url_list=(
  urls
)

for url in "${url_list[@]}"; do
  yt-dlp "$url"
done