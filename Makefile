TAG ?= v0.43.0

clean:
	rm -f bin/dufs || true

build:
	test -d duffs || git clone https://github.com/sigoden/dufs
	cd dufs && git checkout "tags/${TAG}"
	cd dufs && cross build --release --target=aarch64-unknown-linux-gnu
	cp dufs/target/aarch64-unknown-linux-gnu/release/dufs bin/dufs