#!/bin/sh
#
# Copy this file into ~/.calcurse/hooks/ and mark it executable to
# automatically commit any changes to the calcurse data files using Git.

cd "$HOME"/.calcurse/
git add *
if ! git diff-index --quiet --cached HEAD; then
	git commit -m "Automatic commit by the post-save hook"
fi
