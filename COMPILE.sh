cargo run --release --bin starknet-compile -- --single-file factorial.cairo contract.json
cargo run --release --bin starknet-sierra-compile -- contract.json output.json --add-pythonic-hints