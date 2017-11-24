build: | output
	docker build -t zcoin-builder . 
	docker run --name zcoin-builder zcoin-builder 
	docker cp zcoin-builder:/zcoin/src/zcoind    ${PWD}/output/zcoind 
	docker cp zcoin-builder:/zcoin/src/zcoin-cli ${PWD}/output/zcoin-cli 
	docker cp zcoin-builder:/zcoin/src/zcoin-tx  ${PWD}/output/zcoin-tx 
	docker rm zcoin-builder

output:
	mkdir -p $@

clean:
	rm -rf output
	docker rm zcoin-builder
	docker rmi zcoin-builder

.PHONY: build
