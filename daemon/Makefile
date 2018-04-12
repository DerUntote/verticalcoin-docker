build: bin
	cp ../builder/output/* ./bin
	docker build -t verticalcoin-daemon . 

bin:
	mkdir -p $@

clean:
	rm -rf bin
	docker rmi verticalcoin-daemon

.PHONY: build
