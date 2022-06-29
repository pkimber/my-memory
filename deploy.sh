#!/bin/bash
# treat unset variables as an error when substituting.
set -u
# exit immediately if a command exits with a nonzero exit status.
set -e
# make
make html
# deploy
rsync -av --delete --force --size-only --no-perms --omit-dir-times ./build/html/ web@kb-a.kb.vpn:/home/web/repo/project/www.pkimber.net/howto/
