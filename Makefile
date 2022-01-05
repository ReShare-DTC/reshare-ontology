versions=0.1 0.2 0.3

all: base $(versions)
widoco_url=https://github.com/dgarijo/Widoco/releases/download/v1.4.15/widoco-1.4.15-jar-with-dependencies.jar

.PHONY: base $(versions)

base:
	mkdir -p public
	cp index.html public/

widoco.jar:
	wget -O widoco.jar $(widoco_url)

$(versions): % : widoco.jar
	echo "Building $@..."
	mkdir -p doc/$@
	java -jar widoco.jar -ontFile $@/reshare.rdf -outFolder doc/$@ -webVowl -uniteSections -rewriteAll -excludeIntroduction
	mv doc/$@/doc/index-en.html doc/$@/doc/index.html
	mkdir -p public/$@
	cp -r doc/$@/doc/* public/$@

clean:
	rm -rf doc public
