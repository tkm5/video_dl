# !/bin/sh
for file in *; do
    if [ "${file}" != "${0##*/}" ]; then
        newname=$(echo "${file}" | sed 's/^.*第//;s/\[.*$//' | sed 's/ *$//')
        ext="${file##*.}"
        mv "${file}" "${newname}.${ext}"
    fi
done
