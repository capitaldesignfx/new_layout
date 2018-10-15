#!/bin/bash

export LANG=C.UTF-8
export LANGUAGE=C.UTF-8
export LC_ALL=C.UTF-8

JEKYLL_ENV=production bundle exec jekyll build
bundle exec htmlproofer _site/ --http-status-ignore "999" --check-html --trace
