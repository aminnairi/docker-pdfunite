# Contributing

## Requirements

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/) (optional)

## Installation

```console
$ git clone https://github.com/aminnairi/docker-pdfunite.git
```

## Build

```console
$ docker build -t aminnairi/pdfunite .
```

## Test

```console
$ docker run -v "$PWD":/home/pdfunite aminnairi/pdfunite first.pdf second.pdf output.pdf
```

## Push

```console
$ docker push aminnairi/pdfunite:TAG
```

*Where TAG is the target tag like `0.1.0`.*
