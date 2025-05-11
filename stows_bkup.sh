if [ -d "~/.stows/" ]
	rm -rf ./stows/
	cp -r ~/.stows/ ./
elif [ -d "~/stows"]
	rm -rf ./stows/
	cp -r ~/stows/ ./
fi

