#!/bin/bash

JEKYLL_ENV=production jekyll build
cd _site
aws s3 sync . s3://techorrect-website
