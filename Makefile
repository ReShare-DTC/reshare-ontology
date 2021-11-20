versions=0.1 0.2 0.3

all: base $(versions)
widoco_jar=widoco-1.4.14-jar-with-dependencies-selfbuilt.jar

.PHONY: base $(versions)

base:
	mkdir -p public
	cp index.html public/

$(versions): % :
	echo "Building $@..."
	mkdir -p doc/$@
	java -jar $(widoco_jar) -ontFile $@/reshare.rdf -outFolder doc/$@ -webVowl -uniteSections -rewriteAll -excludeIntroduction
	mv doc/$@/doc/index-en.html doc/$@/doc/index.html
	mkdir -p public/$@
	cp -r doc/$@/doc/* public/$@

clean:
	rm -rf doc public
