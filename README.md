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
yarn
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
flux
macvim
slack
dropbox
paparazzi
prey # With API_KEY="<KEY>" set
```

- [ ] `gem install`:

```
bundler
jekyll
```

- [ ] Install [gnu-sed](https://sagebionetworks.jira.com/wiki/display/PLFM/Fixing+sed+on+OSx)
- [ ] Remap Capslock to Esc using Karabiner Elements
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
browserify
budo
documentation
eslint
serve
tap
git+ssh://git@github.com/mapbox/mapbox-cli.git
```

- [ ] Add desired Quicklook plugins: https://github.com/sindresorhus/quick-look-plugins
