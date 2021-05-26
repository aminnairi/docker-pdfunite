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
$ docker run -v "$PWD":/home/pdfunite aminnairi/pdfunite first.pdf second.pdf output.pdf
```

If you want to change the output of the final merged file, use the last file name. For instance, if you want to name your output `project.pdf`.

```console
$ docker run -v "$PWD":/home/pdfunite aminnairi/pdfunite introduction.pdf content.pdf conclusion.pdf project.pdf
```

You can have unlimited files before the output. The exemple shows two to three files but you can merge even more.

```console
$ docker run -v "$PWD":/home/pdfunite aminnairi/pdfunite 1.pdf 2.pdf 3.pdf 4.pdf 5.pdf output.pdf
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
