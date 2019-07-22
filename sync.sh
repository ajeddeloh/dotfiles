#!/bin/bash
set -euo pipefail

files=$(cat files)
for f in $files
do
	infs="${HOME}/${f}"
	[ -L "$infs" ] && echo "skipping $f" && continue
	inrepo=$(readlink -f "home/$f")
	mkdir -p $(dirname "$inrepo")
	cp "$infs" "$inrepo"
	ln -sf "$inrepo" "$infs"
	echo "copy and linked $f"
done
