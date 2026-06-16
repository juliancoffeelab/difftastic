OLD := sample_files/cli_tests/json_empty_hunk_1.py
NEW := sample_files/cli_tests/json_empty_hunk_2.py

.PHONY: diff json

diff:
	cargo run -- $(OLD) $(NEW)

json:
	DFT_UNSTABLE=yes cargo run -- --display json --context 100000000 $(OLD) $(NEW)
