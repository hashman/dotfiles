# dotfiles
Hash's dotfiles

## Requirement

- git
- vim
- curl
- wget
- make
- g++
- libevent-dev
- ncurses-dev
- zlib1g-dev
- build-essential
- libssl-dev
- libreadline-dev
- libbz2-dev
- libsqlite3-dev
- llvm
- libncurses5-dev

## Usage

### Run pre-install script

This command will install oh-my-zsh, pyenv and oh-my-zsh plugins.

```
./run.sh pre-install
```

### Run install script

This command will install all packages in this repo.

```
./run.sh all
```

### Install specific package

```
./run.sh {package_name}
```
