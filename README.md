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
- [ ] brew install `hub node git cask`
- [ ] Clone this repo, set up as above
- [ ] Remap Capslock to Esc with `karabiner` and `seil` (use brew cask install)
