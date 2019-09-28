timelens:
	#HOME=$$(pwd) CARGO_HOME=$$(pwd)/.cargo sh $$(pwd)/tools/rustup.sh -y --no-modify-path
	#HOME=$$(pwd) CARGO_HOME=$$(pwd)/.cargo $$(pwd)/.cargo/bin/cargo build --release
	HOME=$$(pwd) CARGO_HOME=$$(pwd)/.cargo cargo build --release
	cp target/release/timelens .	

install: timelens
	mkdir -p $$(pwd)/debian/timelens/usr/local/bin
	install -m 0755 timelens $$(pwd)/debian/timelens/usr/local/bin 

clean:
	CARGO_HOME=$$(pwd) $$(pwd)/tools/cargo clean
