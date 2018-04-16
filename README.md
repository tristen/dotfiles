Dotfiles
---

### Fresh start checklist

The folowing steps assumes you are starting from scratch.

- [ ] Install [brew](http://brew.sh/) and the following:

```
brew install hub node cask bash-completion the_silver_searcher gpg s3cmd libpng
```

- [ ] `brew cask install`:

```
brew cask install google-chrome 1password adobe-creative-cloud iterm2 nvalt spotify backblaze licecap vlc macvim slack dropbox
```

- [ ] Remap Capslock to Esc from `System preferences > Keyboard > Modifier Keys...`.
- [ ] Set the following git globals (replacing my credentials with your own):

```sh
git config --global user.name 'tristen'
git config --global user.email 'tristen.brown@gmail.com'
git config --global push.default simple
git config --global help.autocorrect 1
git config --global core.excludesfile ~/.gitignore_global
git config --global color.ui true
git config --global alias.up 'pull --rebase --autostash'
```

- [ ] Create the following directories:

```
mkdir ~/.vim/swap
mkdir ~/dev
mkdir ~/dev/github
mkdir ~/dev/mapbox
```

- [ ] [Generate a new SSH keypair](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key)

```
ssh-keygen -t rsa -b 4096 -C "you_email@example.com"
```

- [ ] [Add new SSH key to GitHub](https://github.com/settings/keys)

```
pbcopy < ~/.ssh/id_rsa.pub
```

- [ ] Remove any unused SSH keys from GitHub
- [ ] Clone this repo

```
git clone --recurse-submodules git@github.com:tristen/dotfiles.git && ./bootstrap.sh
```

- [ ] Log in to npm `npm adduser`.
- [ ] `npm install -g` the following:

```
npm install -g eslint serve
```

- [ ] Setup work commandline tool
- [ ] Add desired Quicklook plugins: https://github.com/sindresorhus/quick-look-plugins

### Updating

``` shell
git pull
git submodule foreach 'git pull origin HEAD'
./bootstrap.sh
```

