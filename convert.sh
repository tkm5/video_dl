# !/bin/sh
for file in *; do
    if [ "${file}" != "${0##*/}" ]; then
        newname=$(echo "${file}" | sed 's/^.*第//;s/\[.*$//' | sed 's/ *$//')

        ffmpeg -i "${file}" -c:v libx264 -c:a aac "${newname}.mp4"
    fi
done
