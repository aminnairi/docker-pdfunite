# docker-pdfunite

## Requirements

- Docker
- Docker Compose (optional)

## Installation

```console
$ docker pull aminnairi/pdfunite
```

## Uninstallation

```console
$ docker rmi aminnairi/pdfunite
```

## Usage

### Docker

```console
$ docker run -w "PWD":/home/pdfunite aminnairi/pdfunite first.pdf second.pdf output.pdf
```

### Docker Compose

```console
$ touch docker-compose.yaml
```

```yaml
version: "3"

services:
  pdfunite:
    image: aminnairi/pdfunite:latest
    volumes:
      - .:/home/pdfunite
```

```console
$ docker-compose run --rm pdfunite first.pdf second.pdf output.pdf
```
