test:
	cargo test --release

bench:
	cargo bench

test_eip_152_vec_8:
	cargo test --release \
		test_blake2b_compress_eip_152_vec_8 \
		-- --ignored --nocapture

test_against_python:
	cargo test --release \
		test_py_blake2b_compress_success \
		-- --ignored --nocapture

.PHONY: test bench ignored
