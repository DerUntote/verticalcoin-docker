build: | output
	docker build -t verticalcoin-builder-qt . 
	docker run --name verticalcoin-builder-qt verticalcoin-builder-qt 

docker cp verticalcoin-builder-qt:/verticalcoin/src/verticalcoind       ${PWD}/output/verticalcoind 
docker cp verticalcoin-builder-qt:/verticalcoin/src/verticalcoin-cli    ${PWD}/output/verticalcoin-cli 
docker cp verticalcoin-builder-qt:/verticalcoin/src/verticalcoin-tx     ${PWD}/output/verticalcoin-tx 
docker cp verticalcoin-builder-qt:/verticalcoin/src/qt/verticalcoin-qt  ${PWD}/output/verticalcoin-qt 

	docker rm verticalcoin-builder-qt

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder-qt
	docker rmi verticalcoin-builder-qt

.PHONY: build
