# Sapphillon-ci-image

A Docker image based on Rust with protobuf-compiler pre-installed for CI/CD purposes.

## Features

- Based on the official Rust Docker image
- Includes `protobuf-compiler` for Protocol Buffers compilation
- Automatically built and published to GitHub Container Registry (ghcr.io)

## Usage

Pull the image from GitHub Container Registry:

```bash
docker pull ghcr.io/walkmana-25/sapphillon-ci-image:latest
```

Use in your Dockerfile:

```dockerfile
FROM ghcr.io/walkmana-25/sapphillon-ci-image:latest
```

Use in GitHub Actions:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/walkmana-25/sapphillon-ci-image:latest
    steps:
      - uses: actions/checkout@v4
      - name: Build your Rust project
        run: cargo build --release
```

## Building Locally

```bash
docker build -t sapphillon-ci-image .
```

## Verify protobuf-compiler Installation

```bash
docker run --rm ghcr.io/walkmana-25/sapphillon-ci-image:latest protoc --version
```