all:
		cd daemon && make
		cd cli && cargo build --release

install:
		cp ./daemon/fprocd /usr/local/bin
		cp ./cli/target/release/fproc /usr/local/bin
		strip /usr/local/bin/fproc

clean:
		rm -rf ./damon/fprocd
		rm -rf ./cli/target
