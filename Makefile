timelens:
	/root/.cargo/bin/cargo build --release
	cp target/release/timelens .	

install: timelens
	mkdir -p $$(pwd)/debian/timelens/usr/local/bin
	install -m 0755 timelens $$(pwd)/debian/timelens/usr/local/bin 

clean:
	/root/.cargo/bin/cargo clean
