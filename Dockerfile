FROM rust:latest

# Install protobuf-compiler
RUN apt-get update && \
    apt-get install -y protobuf-compiler && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify installation
RUN protoc --version
