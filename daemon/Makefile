build: bin
	cp ../builder/output/* ./bin
	docker build -t zcoin-daemon . 

bin:
	mkdir -p $@

clean:
	rm -rf bin
	docker rmi zcoin-daemon

.PHONY: build
