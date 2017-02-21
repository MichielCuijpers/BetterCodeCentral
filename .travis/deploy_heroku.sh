#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login --email=_ --username=_ --password=$HEROKU_AUTH_TOKEN registry.heroku.com
heroku container:push web
