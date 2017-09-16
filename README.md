# A docker-compose example with Nginx and PHP app

## Usage
```
# Only need to run make image once.
# This is going to take some time if you did not run it before
make image

make devup # bring up the env 
make devdown # take down the env 
make devps # list the apps
```

Check out `Makefile` for more details.

After `make devup`, visit:
- http://localhost:8722/hello.php
- http://localhost:8722/info.php

Add or edit code in `./phpcode`

## License
Do-Whatever-You-Want License.
