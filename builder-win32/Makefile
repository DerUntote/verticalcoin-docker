build: | output
	docker build -t verticalcoin-builder-win32 . 
	docker run --name verticalcoin-builder-win32 verticalcoin-builder-win32 
   
docker cp verticalcoin-builder-win32:/verticalcoin/src/verticalcoin-cli.exe      ${PWD}/output/verticalcoin-cli.exe 
docker cp verticalcoin-builder-win32:/verticalcoin/src/verticalcoin-tx.exe       ${PWD}/output/verticalcoin-tx.exe 
docker cp verticalcoin-builder-win32:/verticalcoin/src/verticalcoind.exe         ${PWD}/output/verticalcoind.exe
docker cp verticalcoin-builder-win32:/verticalcoin/src/qt/verticalcoin-qt.exe    ${PWD}/output/verticalcoin-qt.exe

	docker rm verticalcoin-builder-win32

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder-win32
	docker rmi verticalcoin-builder-win32

.PHONY: build
