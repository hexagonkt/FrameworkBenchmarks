FROM rust:1.42

RUN apt update -yqq && apt install -yqq cmake g++

ADD ./ /roa
WORKDIR /roa

RUN cargo clean
RUN RUSTFLAGS="-C target-cpu=native" cargo build --release --bin roa-core --features "tokio_rt"

CMD ./target/release/roa-core
