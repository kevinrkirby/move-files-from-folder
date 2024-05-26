#!/bin/bash
cd ~/pathtosource/directory

for filename in *; do

echo ${filename##*\.}

	if [[ ! -d "$filename" ]]; then
		ext=${filename##*\.}
		echo $(ls)
		case $ext in
			"pdf") mv "$filename" ~/pathtotargetfolder/pdf 
			;;
			"dmg" | "app" ) mv "$filename" ~/pathtotargetfolder/apps
			;;
			"zip" | "xz" | "rar") mv "$filename" ~/pathtotargetfolder/zip
			;;
		esac

		mv "$filename" ~/pathtotargetfolder/other
	fi
done