#!/bin/bash
# Transfer a file from Microsoft OneDrive to linux using wget
#
# https://stackoverflow.com/questions/37857098/download-onedrive-file-from-curl-since-theyve-changed-their-urls-construction
# wget -O p.csv url='https://api.onedrive.com/v1.0/shares/s!YOUR_KEY_IS_HERE/root/content'

u1="https://api.onedrive.com/v1.0/shares/s!"
u2="/root/content"
urlPath=${u1}${2}${u2}
outputPath=$1

usage()
{
    echo "owget: owget output_file url_token"
    echo "      OneDrive token is found between /s! and /root/content"
    echo "      example: owget project.csv YOUR_KEY_HERE"
}

main()
{
    echo "getting ${urlPath}"
    wget -O ${outputPath} ${urlPath}
}

[ "$#" != 2 ] && (usage && exit 0) || main
