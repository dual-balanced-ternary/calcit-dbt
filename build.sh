
# cargo build
# mkdir -p dylibs/ && ls target/debug/ && cp -v target/debug/libcalcit_dbt.* dylibs/

cargo build --release
mkdir -p dylibs/ && ls target/release/ && cp -v target/release/libcalcit_dbt.* dylibs/
