build: | output
	docker build -t verticalcoin-builder-win64 . 
	docker run --name verticalcoin-builder-win64 verticalcoin-builder-win64 
   
   docker cp verticalcoin-builder-win64:/verticalcoin/src/verticalcoin-cli.exe    ${PWD}/output/verticalcoin-cli.exe 
	docker cp verticalcoin-builder-win64:/verticalcoin/src/verticalcoin-tx.exe     ${PWD}/output/verticalcoin-tx.exe 
   docker cp verticalcoin-builder-win64:/verticalcoin/src/verticalcoind.exe       ${PWD}/output/verticalcoind.exe
	
	docker rm verticalcoin-builder-win64

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder-win64
	docker rmi verticalcoin-builder-win64

.PHONY: build
