# !/bin/sh
for file in *; do
    if [ "${file}" != "${0##*/}" ]; then
        newname=$(echo "${file}" | sed 's/^.*第//;s/\[.*$//' | sed 's/ *$//')

        ffmpeg -i "${file}" -c:v libx264 -c:a aac "${newname}.mp4"
    fi
done

webhook=https://discord.com/api/webhooks/1214979463155023922/Vg-qFUt-_Fc4sEA3xpa0-LdRtxMTsv-oT7JuPJv-WDWDNtZDzELesBm0QuD8eI8g2R6i
curl -H "Content-Type: application/json" -X POST -d '{"content":"'"Convert Done!"'"}' $webhook

