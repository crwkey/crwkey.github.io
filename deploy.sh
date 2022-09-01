#! /bin/bash

set -e

git add -A && git commit -m "SAVEPOINT"

git pull --rebase origin develop

git push origin develop

