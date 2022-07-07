#!/usr/bin/env bash

docker buildx build --platform=linux/amd64,linux/arm64 --no-cache \
	-t "rubensa/ubuntu-openssl-old:18.04" \
	--label "maintainer=Ruben Suarez <rubensa@gmail.com>" \
	.

docker buildx build --load \
	-t "rubensa/ubuntu-openssl-old:18.04" \
	.