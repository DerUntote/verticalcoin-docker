build: | output
	docker build -t verticalcoin-builder-qt . 
	docker run --name verticalcoin-builder-qt verticalcoin-builder-qt 
	docker cp verticalcoin-builder-qt:/verticalcoin/src/verticalcoin*    ${PWD}/output/verticalcoin 
	docker rm verticalcoin-builder-qt

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder-qt
	docker rmi verticalcoin-builder-qt

.PHONY: build
