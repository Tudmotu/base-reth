FROM alpine:latest

RUN apk add --update alpine-sdk clang-dev pkgconfig openssl-dev
RUN mkdir /reth-data
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN git clone https://github.com/paradigmxyz/reth /reth
WORKDIR /reth
RUN RUSTFLAGS="-C target-feature=-crt-static" $HOME/.cargo/bin/cargo install \
        --locked \
        --path bin/reth \
        --bin op-reth \
        --features jemalloc,optimism

ADD ./entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]
