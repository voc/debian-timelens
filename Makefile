timelens:
	mkdir $$(pwd)/.rustup
	CARGO_HOME=$$(pwd) sh $$(pwd)/tools/rustup.sh -y --no-modify-path
	CARGO_HOME=$$(pwd) $$(pwd)/.cargo/bin/cargo build --release
	cp target/release/timelens .	

install: timelens
	mkdir -p $$(pwd)/debian/timelens/usr/local/bin
	install -m 0755 timelens $$(pwd)/debian/timelens/usr/local/bin 

clean:
	CARGO_HOME=$$(pwd) $$(pwd)/tools/cargo clean
