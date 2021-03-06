# up2d8

Keep `docker-compose`, `docker-machine`, and other commands up-to-date.

## tldr;

Just run `up2d8`, and all supported commands will be updated to their latest published version.
Do it regularly, and enjoy effortless evergreen tools!

Pre-requisites:

- bash
- git
- curl 
- if some commands aer already installed (ex: docker-compose or docker-machine),
they must be in the path
- only tested on Linux, so probably not working out of the box on Windows or Mac.
PRs most welcome!

Install

- `git clone https://github.com/xavierpriour/up2d8.git`
- `chmod +x ./up2d8/up2d8`
- add to path

## why?

Single-file executables are the new rage for modern dev(ops) tools.
Everywhere I go, websites ask you to download a single bash or go executable, drop it in your path,
and happily type away. `docker-compose`, `helm`, `ctop`, the list goes on. 

This is all fine and dandy at the beginning, but how do you keep up with updates?
Their authors don't want to go through the trouble of building packages for the dozens of existing package managers
(and who can blame them?).
Yet as a user, I'm tired of wading through git repos just to see if a new version is available,
download a tarball, extract, hunt for the previous one, and replace it.

So I built `up2d8`, to do it all for me.

## usage

Update

- Update all currently installed commands: `up2d8`
- Only one command: `up2d8 docker-compose`
- Downgrade a command: `up2d8 kompose=1.10.0`
- Combine: `up2d8 kompose=1.10.0 docker-compose`
- works on already installed commands.
If a supported command is in the path, up2d8 will find it and replace with latest version.

Install

- Use it to install a command: `up2d8 kompose --dir=my/install/directory`
- Install and link to your bin directory (in $PATH):  `up2d8 kompose --dir=my/install/directory --bin=/usr/bin` 

Other options

- `up2d8 --help` lists all options
- `up2d8 --version`

## Supported commands
   
- [ctop](https://ctop.sh/)
- [docker-compose](https://docs.docker.com/compose/)
- [docker-machine](https://docs.docker.com/machine/)
- [helm](https://helm.sh/)
- [kompose](http://kompose.io/)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/)
- [minikube](https://github.com/kubernetes/minikube)

## roadmap

No promise or dates, but here's what I have in mind for the future,
in no particular order

- `up2d8 -la` to list commands we can manage
- gracefully crash if required version does not exist
- add tests
- put apps definitions in a separate data file (json maybe) rather than in the middle of the bash code
- dogfood: up2d8 should keep itself up-to-date
- more commands: suggestions most welcome!
- rewrite it in go (because bash, well...)

Help needed

- test and make it work on other systems than Linux


## thanks

We use [Argbash](https://argbash.io/) to parse arguments,
and if you write bash code, you should too, it is **awesome** :) 
