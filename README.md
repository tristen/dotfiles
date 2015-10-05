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
- [ ] [brew](http://brew.sh/) install: 

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

- [ ] `gem install`:

```
jekyll
```

- [ ] Install [gnu-sed](https://sagebionetworks.jira.com/wiki/display/PLFM/Fixing+sed+on+OSx)
- [ ] Remap Capslock to Esc with `karabiner` and `seil` (use brew cask install)
- [ ] Setup git globals:

```sh
git config --global user.name 'YOURNAME'
git config --global user.email 'YOURNAME@EMAIL.COM'
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

- [ ] Clone this repo, set up as above
