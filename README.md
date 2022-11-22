Dotfiles
---

### Fresh start checklist

The folowing steps assumes you are starting from scratch.

- [ ] Install [brew](http://brew.sh/) and the following:

```
brew install hub node cask google-chrome 1password iterm2 nvalt spotify backblaze licecap dropbox slack the_silver_searcher macvim figma itsycal zsh
```

- [ ] Install [Node Version Manager](https://github.com/nvm-sh/nvm#installing-and-updating)
- [ ] Install [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
- [ ] Remap CapsLock to ESC from `System preferences > Keyboard > Modifier Keys...`.
- [ ] Set the following git globals (replacing my credentials with your own):

```sh
git config --global user.name 'tristen'
git config --global user.email 'tristen.brown@gmail.com'
git config --global push.default simple
git config --global help.autocorrect 1
git config --global core.excludesfile ~/.gitignore_global
git config --global color.ui true
git config --global alias.up 'pull --rebase --autostash'
git config --global init.defaultBranch main
git config --global alias.track '!git branch --set-upstream-to=origin/`git symbolic-ref --short HEAD`'
```

- [ ] Generate a new SSH keypair (replacing my email with your own):

```
ssh-keygen -t rsa -b 4096 -C "tristen.brown@gmail.com"
```

- [ ] [Add new SSH key to GitHub](https://github.com/settings/keys):

```
pbcopy < ~/.ssh/id_rsa.pub
```

- [ ] [Configure the SSH key to use with SSO](https://docs.github.com/en/enterprise-cloud@latest/authentication/authenticating-with-saml-single-sign-on/authorizing-an-ssh-key-for-use-with-saml-single-sign-on)
- [ ] Remove any unused SSH keys from GitHub.
- [ ] Clone this repo:

```
cd ~/ && git clone --recurse-submodules git@github.com:tristen/dotfiles.git
```

- [ ] Create the following directories:

```
mkdir ~/.vim/swap ~/dev ~/dev/github ~/dev/mapbox
```

- [ ] Run `bootstrap.sh`

```
./dotfiles/bootstrap.sh
```

- [ ] Log in to npm:

```
npm adduser
```

- [ ] [Install Vim Plug](https://github.com/junegunn/vim-plug#unix)
- [ ] Run `PlugInstall` in Vim

```
:PlugInstall
```

- [ ] Add any desired globals from npm
- [ ] Add desired Quicklook plugins: https://github.com/sindresorhus/quick-look-plugins
- [ ] Clone and set up work (Mapbox) commandline tool
- [ ] Install a [Native version of Inkscape](http://www.inkscapeforum.com/viewtopic.php?t=23191)

### Updating

``` shell
git pull
git submodule foreach 'git pull origin HEAD'
./bootstrap.sh
```

