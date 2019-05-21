#!/bin/bash
set -x
git pull
git commit -am "changes"
git push origin master
