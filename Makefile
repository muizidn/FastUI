gendoc:
	git checkout -b gh-pages || true
	git checkout gh-pages
	xcodegen
	bundle exec jazzy
	git add docs && git commit -m "update docs"
	git remote add origin-pages https://${GITHUB_TOKEN}@github.com/muizidn/FastUI.git || true
	git push -f --quiet --set-upstream origin-pages gh-pages
	echo "Docs generated. Done!"
