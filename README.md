_TODO: Wrap all of this into a nice lil script_

To set things up on a fresh system, just clone the repository and run:

``` sh
git submodule update --init
sh bootstrap.sh
```

### Updating

``` shell
git pull
git submodule foreach 'git pull origin master'
sh bootstrap.sh
```

### Fresh start setup checklist

- [ ] Generate SSH keypair
- [ ] Add new SSH key to GitHub
- [ ] Remove any unused SSH keys from GitHub
- [ ] Clone this repo, set up as above
- [ ] Install [brew](http://brew.sh/) and the following:

```
hub
node
ruby
cask
bash-completion
the_silver_searcher
awscli
gpg
s3cmd
```

- [ ] `brew cask install`:

```
1password
google-chrome
karabiner
macvim
seil
dropbox
iterm2
licecap
nvalt
slack
vlc
```

- [ ] `gem install`:

```
jekyll
```

- [ ] Install [gnu-sed](https://sagebionetworks.jira.com/wiki/display/PLFM/Fixing+sed+on+OSx)
- [ ] Remap Capslock to Esc with `seil`
- [ ] Setup git globals (replacing my credentials with your own):

```sh
git config --global user.name 'tristen'
git config --global user.email 'tristen.brown@gmail.com'
git config --global push.default simple
git config --global help.autocorrect 1
git config --global core.excludesfile ~/.gitignore_global
git config --global color.ui true
```

- [ ] Create the following directories:

```
mkdir ~/.vim/swap
mkdir ~/dev
mkdir ~/dev/github
mkdir ~/dev/mapbox
```

- [ ] `npm install -g` the following:

```
eslint
git+ssh://git@github.com/mapbox/mapbox-cli.git
```
