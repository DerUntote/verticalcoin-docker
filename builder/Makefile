build: | output
	docker build -t verticalcoin-builder . 
	docker run --name verticalcoin-builder verticalcoin-builder 
	docker cp verticalcoin-builder:/verticalcoin/src/verticalcoind    ${PWD}/output/verticalcoind 
	docker cp verticalcoin-builder:/verticalcoin/src/verticalcoin-cli ${PWD}/output/verticalcoin-cli 
	docker cp verticalcoin-builder:/verticalcoin/src/verticalcoin-tx  ${PWD}/output/verticalcoin-tx 
	docker rm verticalcoin-builder

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder
	docker rmi verticalcoin-builder

.PHONY: build
