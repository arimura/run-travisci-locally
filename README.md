# run-travisci-locally

## How to use
```
$ docker run --name travis-debug -dit travisci/ci-amethyst:packer-1512508255-986baf0 /sbin/init
$ docker exec -it travis-debug bash -l

#Inside docker
$ su - travis
$ rvm install 2.3.0
$ rvm use 2.3.0
$ cd builds
$ git clone https://github.com/travis-ci/travis-build.git
#to create ~/.travis
$ gem install travis
$ travis

$ cd travis-build
$ ln -s $(pwd) $HOME/.travis/travis-build
$ bundle install
$ bundler add travis
$ bundler binstubs travis
$ chmod o-w /usr/local/clang-5.0.0/bin
$ cd ..
$ git clone https://github.com/arimura/run-travisci-locally.git
$ cd run-travisci-locally
$ ~/.travis/travis-build/bin/travis compile > ci.sh

```

