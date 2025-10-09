FROM rust:1.90-bookworm

# Install rust components
RUN rustup component add clippy rustfmt

# Install protobuf-compiler
RUN apt-get update && \
    apt-get install -y protobuf-compiler && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify installation
RUN protoc --version
