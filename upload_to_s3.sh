#!/bin/bash

JEKYLL_ENV=production jekyll build
aws s3 sync --exclude "assets/css/styles.css" _site/ s3://techorrect-website
aws s3 sync --exclude "*" --include "assets/css/styles.css" --metadata-directive REPLACE --content-type "text/css" --cache-control 86400 _site/ s3://techorrect-website
