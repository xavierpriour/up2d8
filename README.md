# docker-update
easily update docker-compose and docker-machine

## tldr;

Pre-requisites:

- bash
- git
- curl 
- commands already installed (ex: docker-compose or docker-machine)
must be in the path

Install

- `git clone https://github.com/xavierpriour/docker-update.git`
- `chmod +x ./docker-update/docker.self-update`
- add to path

Update docker-compose and docker-machine to latest version: `docker.self-update`

## details

Update

- Update all currently installed commands: `docker.self-update`
- Only one command: `docker.self-update docker-compose`
- Downgrade a command: `docker.self-update kompose=1.10.0`
- Combine: `docker.self-update kompose=1.10.0 docker-compose`

Install

- Use it to install a command: `docker.self-update kompose --dir=my/install/directory`
- Install and link to your bin directory (in $PATH):  `docker.self-update kompose --dir=my/install/directory --bin=/usr/bin` 

## roadmap


- gracefully crash if required version does not exist
- add tests

## Thanks

We use [Argbash](https://argbash.io/) to parse arguments,
and if you write bash code, you should too, it is **awesome** :) 
