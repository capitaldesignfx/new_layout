#!/bin/bash

JEKYLL_ENV=production bundle exec jekyll build
bundle exec htmlproofer _site/ --http-status-ignore "999" --check-html
