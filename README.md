# Colophon Docker

[![License][license-image]][license-url]

> Docker / Docker Compose Template for Colophon

## Usage

### Environment Setup
Copy `.env.example` into `.env` and populate with your environment configuration.


### Docker Compose

for the first time run, start each container separately to allow for database initialization:

```shell
$ docker-compose up db
$ docker-compose up app
```

thereafter you can simply run:

```shell
$ docker-compose up
```

> _**Note**: this is obviously not ideal, a better approach to is to use methods described in [Docker's Docs](https://docs.docker.com/compose/startup-order/) pull requests are welcome_.

## Notes

### Database Initialization

`docker-composer` will [automatically apply](./docker-compose.yml#L13) the mapped Colophon database schema.  

However, this is not recommended for production deployemnts. Please use an appropriately managed/scaled database server.

---
> Website: [colophon.id](https://colophon.id) &bull; 
> Github: [@project-colophon](https://github.com/project-colophon) &bull; 
> Twitter: [@ColophonID](https://twitter.com/ColophonID)

[license-url]: LICENSE
[license-image]: https://img.shields.io/github/license/project-colophon/docker.svg?style=for-the-badge&logo=circleci
