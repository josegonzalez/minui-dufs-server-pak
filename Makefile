TAG ?= v0.43.0

clean:
	rm -f bin/dufs || true

build: bin/evtest
	test -d dufs || git clone https://github.com/sigoden/dufs
	cd dufs && git checkout "tags/${TAG}"
	cd dufs && cross build --release --target=aarch64-unknown-linux-gnu
	cp dufs/target/aarch64-unknown-linux-gnu/release/dufs bin/dufs

bin/evtest:
	docker build --build-arg BUILD_DATE=$(BUILD_DATE) -f Dockerfile.evtest --progress plain -t app/evtest:$(TAG) .
	docker container create --name extract app/evtest:$(TAG)
	docker container cp extract:/go/src/github.com/freedesktop/evtest/evtest bin/evtest
	docker container rm extract
	chmod +x bin/evtest
