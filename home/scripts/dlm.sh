#!/bin/bash

URL=$1
COOKIES=$2

if [[ $1 == "--help" ]]; then
	echo "dlm.sh <url> <cookies>"
elif [[ $1 == "" ]]; then
	echo "dlm.sh <url> <cookies>"
else
	yt-dlp --cookies $COOKIES \
		--extract-audio --audio-format mp3 \
		--audio-quality 0 --no-keep-video \
		$URL
fi
