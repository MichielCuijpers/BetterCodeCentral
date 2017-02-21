#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -e _ -u _ --password=$HEROKU_AUTH_TOKEN registry.heroku.com
heroku container:push web --app lit-stream-81480
