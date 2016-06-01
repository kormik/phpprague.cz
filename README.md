# PhpPrague.cz - Sculpin Blog

[![Build Status](https://img.shields.io/travis/PhpPrague/PhpPrague.cz.svg?style=flat-square)](https://travis-ci.org/PhpPrague/PhpPrague.cz)


## How to run it?

```sh
composer update
vendor/bin/sculpin generate --watch --server --port 8001 # it needs to be run from vendor, to autoload all composer classes
```

And open [localhost:8001](http://localhost:8001).


## For production?

```sh
vendor/bin/sculpin generate --env=prod
```
