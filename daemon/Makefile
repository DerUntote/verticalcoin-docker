build: bin
	cp ../builder-vanilla/output/* ./bin
	docker build -t verticalcoin-daemon . 

bin:
	mkdir -p $@

clean:
	rm -rf bin
	docker rmi verticalcoin-daemon

.PHONY: build
