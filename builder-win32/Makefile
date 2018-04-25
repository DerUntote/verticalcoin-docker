build: | output
	docker build -t verticalcoin-builder-win32 . 
	docker run --name verticalcoin-builder-win32 verticalcoin-builder-win32 
	docker cp verticalcoin-builder-win32:/verticalcoin/src/verticalcoin*    ${PWD}/output/verticalcoin 
	docker rm verticalcoin-builder-win32

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm verticalcoin-builder-win32
	docker rmi verticalcoin-builder-win32

.PHONY: build
