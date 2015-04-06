#!/bin/bash
# treat unset variables as an error when substituting.
set -u
# exit immediately if a command exits with a nonzero exit status.
set -e
# deploy
rsync -av --delete --force --size-only ./build/html/ web@pkimber.net:/home/web/repo/project/pkimber_net/howto/
