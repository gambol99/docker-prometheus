#
#   Author: Rohith
#   Date: 2015-07-20 16:46:11 +0100 (Mon, 20 Jul 2015)
#
#  vim:ts=2:sw=2:et
#
NAME=prometheus
AUTHOR=gambol99

.PHONY: build test

default: build

build:
	sudo docker build -t ${AUTHOR}/${NAME} .

test: build 
	sudo docker run -ti -p 9000:9000 ${AUTHOR}/${NAME}
