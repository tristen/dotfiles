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
