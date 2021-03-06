clean:
	rm -rf tmp

build:
	mkdir tmp
	cp -R General tmp/General
	cp -R Errors tmp/Errors
	cp -R Methods tmp/Methods
	cp -R Objects tmp/Objects
	cp -R Specifications tmp/Specifications
	cp -R Types tmp/Types
	cp README.md tmp/README.md
	find tmp/ -name "*.tgn" | xargs rm 
	find tmp/ -name "README.md" -exec sh -c 'mv {} $$(dirname {})/index.md' \;
	find tmp/ -type f -name "*.md" -exec sed -i'' -e 's/README.md/index.md/g' {} +
	python3 -m mkdocs build
