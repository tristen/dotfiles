Dotfiles
---

_TODO: Wrap all of this into a nice lil script_

### Fresh start checklist

The folowing steps assumes you are starting from scratch.

- [ ] [Generate a new SSH keypair](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key)
- [ ] [Add new SSH key to GitHub](https://github.com/settings/keys)
- [ ] Remove any unused SSH keys from GitHub
- [ ] Clone this repo and run

    git submodule update --init
    sh bootstrap.sh

- [ ] Install [brew](http://brew.sh/) and the following:

```
hub
cask
bash-completion
the_silver_searcher
gpg
s3cmd
yarn
libpng
```

- [ ] `brew cask install`:

```
google-chrome
1password
adobe-creative-cloud
iterm2
nvalt
spotify
backblaze
licecap
skitch
vlc
macvim
slack
dropbox
```

- [ ] Install [gnu-sed](https://sagebionetworks.jira.com/wiki/display/PLFM/Fixing+sed+on+OSx)
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

- [ ] Log in to npm `npm adduser`.
- [ ] `npm install -g` the following:

```
eslint
serve
```

- [ ] Setup work commandline tool
- [ ] Add desired Quicklook plugins: https://github.com/sindresorhus/quick-look-plugins

### Updating

``` shell
git pull
git submodule foreach 'git pull origin HEAD'
sh bootstrap.sh
```

