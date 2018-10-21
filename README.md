# Techorrect.com website

Techorrect's website is written using [Jekyll](https://jekyllrb.com) and [Pure.css](https://purecss.io).  Jekyll makes it easy to write blog posts via git and markdown, and Pure.css is a lightweight CSS library.

Images for the main techorrect.com site are currently inlined SVGs for performance and flexibility.  They can be found under `_includes`.  The line icons were obtained from [Elegant Themes](https://www.elegantthemes.com/blog/freebie-of-the-week/free-line-style-icons), and then were inlined into SVGs manually

For simplicity, images for the blog are placed under /assets/images/, and then referenced from the blog posts.

Initial setup and local testing:

* Install Ruby, the bundler gem, and Jekyll
* Run `bundle install` in this repo directory
* `bundle exec jekyll server`, then go to [http://localhost:4000](http://localhost:4000)
* Run `test.sh` to validate HTML and check for broken links

To update the site:

* Update source code
* Test locally by running `bundle exec jekyll server`, and then going to [http://localhost:4000](http://localhost:4000)
* ~~(This step has been replaced by the pipeline in the next point.)  Run `./upload_to_s3.sh`, which will build the prod version (includes google analytics and minified css), and upload the files directly to the techorrect-website s3 bucket.~~
* Push your changes to master.  Bitbucket pipelines will then run tests and deploy your code to S3.  Please avoid commiting to master unless you actually want to deploy, because the free Bitbucket account only has 50 minutes of pipeline minutes.  Use pull requests instead to manage pending changes
* (optional) Invalidate the Cloudfront distribution cache using `invalidate_cache.sh.example` (replace the environment variable with the CloudFront distribution id).  This step is also commented out in `bitbucket-pipelines.yml`, as there are a limited number of free invalidations per month (1000).   If the cache is not invalidated, the Cloudfront cache will expire within the next 24 hours and the cache will be repopulated on the first request after that.
