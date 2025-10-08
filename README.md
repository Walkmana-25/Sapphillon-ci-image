# Sapphillon-ci-image

Docker images based on Rust with protobuf-compiler pre-installed for CI/CD purposes. Available for both Linux and Windows platforms.

## Features

- Based on the official Rust Docker image
- Includes `protobuf-compiler` for Protocol Buffers compilation
- Automatically built and published to GitHub Container Registry (ghcr.io)
- Available for Linux (latest) and Windows (latest-windows) platforms

## Usage

### Linux Image

Pull the Linux image from GitHub Container Registry:

```bash
docker pull ghcr.io/walkmana-25/sapphillon-ci-image:latest
# or explicitly
docker pull ghcr.io/walkmana-25/sapphillon-ci-image:latest-linux
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

### Windows Image

Pull the Windows image from GitHub Container Registry:

```powershell
docker pull ghcr.io/walkmana-25/sapphillon-ci-image:latest-windows
```

Use in your Dockerfile:

```dockerfile
FROM ghcr.io/walkmana-25/sapphillon-ci-image:latest-windows
```

Use in GitHub Actions:

```yaml
jobs:
  build:
    runs-on: windows-latest
    steps:
      - uses: actions/checkout@v4
      - name: Build Docker image
        run: docker build -f Dockerfile.windows .
```

## Building Locally

### Linux

```bash
docker build -t sapphillon-ci-image:linux .
```

### Windows

```powershell
docker build -t sapphillon-ci-image:windows -f Dockerfile.windows .
```

## Verify protobuf-compiler Installation

### Linux

```bash
docker run --rm ghcr.io/walkmana-25/sapphillon-ci-image:latest protoc --version
```

### Windows

```powershell
docker run --rm ghcr.io/walkmana-25/sapphillon-ci-image:latest-windows protoc --version
```