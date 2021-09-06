# docker-nebula

[![build](https://github.com/chrisx8/docker-nebula/actions/workflows/build.yml/badge.svg)](https://github.com/chrisx8/docker-nebula/actions/workflows/build.yml)

Run [Nebula](https://github.com/slackhq/nebula) in a Docker container. The Docker image is updated weekly.

## About Nebula

From [slackhq/nebula](https://github.com/slackhq/nebula)

> Nebula is a scalable overlay networking tool with a focus on performance, simplicity and security. It lets you seamlessly connect computers anywhere in the world. Nebula is portable, and runs on Linux, OSX, Windows, iOS, and Android. It can be used to connect a small number of computers, but is also able to connect tens of thousands of computers.

Learn more about Nebula [here](https://medium.com/p/884110a5579).

## Set up

- When writing `config.yml`, make sure certificates are located in `/nebula`
- Put your certificates and `config.yml` in the same directory
- Replace `<NEBULA_DIR>` with the absolute path to the directory that contains Nebula's certificates and `config.yml`

```bash
docker run -v <NEBULA_DIR>:/nebula -d -p 4242:4242/udp --cap-add=NET_ADMIN ghcr.io/chrisx8/nebula
```
