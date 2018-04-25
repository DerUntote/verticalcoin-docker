build: | output
	docker build -t verticalcoin-builder-win64 . 
	docker run --name verticalcoin-builder-win64 verticalcoin-builder-win64 
	docker cp verticalcoin-builder-win64:/verticalcoin/src/verticalcoin*    ${PWD}/output/verticalcoin 
	docker rm verticalcoin-builder-win64

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder-win64
	docker rmi verticalcoin-builder-win64

.PHONY: build
