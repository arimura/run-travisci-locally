# run-travisci-locally

## How to use
```
$ docker build my-travis:latest .
$ docker run --name travis-debug -dit my-travis:latest /bin/bash
$ docker exec -it travis-debug bash -l

#install whatever you use

$ cd $HOME/builds
$ mkdir repo-username
$ git clone repo
$ cd repo
$ $HOME/.travis/travis-build/bin/travis compile > ci.sh
#edit ci.sh
$ ci.sh
```

