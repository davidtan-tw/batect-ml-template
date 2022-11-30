# batect-ml-template

A template for ML projects, with dependency management made effortless by `batect`

## Setup

Install host-level dependencies:

```shell script
# mac users
scripts/go/go-mac.sh

# linux users
scripts/go-linux-ubuntu.sh

# windows
# work in progress. in the meantime, please install Docker manually if it's not already installed
```

Configure Docker runtime
```shell
# set up colima (a license-free docker runtime, an alternative to docker desktop)
https://gist.github.com/jcartledge/0ce114e9719a62a4776569e80088511d
```

## Tasks that you can run

```shell script
# start docker runtime
colima start

# install application-level dependencies
./batect setup

# start container (i.e. local dev environment)
./batect start-dev-container

# run tests
**./batect --output=all run-unit-tests**

# start jupyter notebook. --output=all shows verbose logs of docker tasks (e.g. docker build)
./batect --output=all start-jupyter
```
