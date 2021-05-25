# docker-pdfunite

## Summary

- [Requirements](https://github.com/aminnairi/docker-pdfunite#requirements)
- [Installation](https://github.com/aminnairi/docker-pdfunite#installation)
- [Uninstallation](https://github.com/aminnairi/docker-pdfunite#uninstallation)
- [Usage](https://github.com/aminnairi/docker-pdfunite#usage)
  - [Docker](https://github.com/aminnairi/docker-pdfunite#docker)
  - [Docker Compose](https://github.com/aminnairi/docker-pdfunite#docker-compose)
- [License](https://github.com/aminnairi/docker-pdfunite#license)
- [Contributing](https://github.com/aminnairi/docker-pdfunite#contributing)

## Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/) (optional)

## Installation

```console
$ docker pull aminnairi/pdfunite:latest
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

## License

See [`LICENSE`](https://github.com/aminnairi/docker-pdfunite/blob/production/LICENSE).

## Contributing

See [`CONTRIBUTING.md`](https://github.com/aminnairi/docker-pdfunite/blob/production/CONTRIBUTING.md).
