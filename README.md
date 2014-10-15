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
- [ ] brew install `hub node git cask bash-completion`
- [ ] Remap Capslock to Esc with `karabiner` and `seil` (use brew cask install)
- [ ] Setup git globals. ie:

```sh
git config --global user.name 'YOURNAME'
git config --global user.email 'YOURNAME@EMAIL.COM'
git config --global help.autocorrect 1
```

- [ ] Create the following directories:

`~/.vim/swap` & `~/dev/github` & `~/dev/mapbox`

- [ ] Clone this repo, set up as above
