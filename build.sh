#!/bin/sh

apt-get update -y || true
yum update -y || true

hugo --theme=hyde
