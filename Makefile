timelens:
	sh $$(pwd)/tools/rustup.sh -y
	CARGO_HOME=$$(pwd) $$(pwd)/tools/cargo build --release
	cp target/release/timelens .	

install: timelens
	mkdir -p $$(pwd)/debian/timelens/usr/local/bin
	install -m 0755 timelens $$(pwd)/debian/timelens/usr/local/bin 

clean:
	CARGO_HOME=$$(pwd) $$(pwd)/tools/cargo clean
