# Techorrect.com website

Techorrect's website is written using [Jekyll](https://jekyllrb.com) and [Pure.css](https://purecss.io).  To develop and test the site locally, run `jekyll s` in this repo, and it should launch the site at [http://localhost:4000](http://localhost:4000).  Jekyll makes it easy to write blog posts via git and markdown, and Pure.css is a lightweight CSS library.

All images are currently inlined SVGs for performance and flexibility.  They can be found under `_includes`.  The line icons were obtained from [Elegant Themes](https://www.elegantthemes.com/blog/freebie-of-the-week/free-line-style-icons), and then were inlined into SVGs manually

Initial setup:
* Install Ruby, the bundler gem, and Jekyll
* Run `bundle install` in this repo directory

To update the site:

* Update source code
* Test locally by running `bundle exec jekyll server`, and then going to [http://localhost:4000](http://localhost:4000)
* Run `./upload_to_s3.sh`, which will build the prod version (includes google analytics and minified css), and upload the files directly to the techorrect-website s3 bucket
* (optional) Manually invalidate the Cloudfront distribution cache.  If this isn't done, the Cloudfront cache will expire within the next 24 hours and the site should be updated then.

## TODO

Here are the remaining items to do for the website

* ~~Improve formatting in Contact Us section~~
* ~~The About page needs to be created~~
* ~~Blog page needs to be created~~
* ~~Re-factor code~~
* ~~Improve formatting in blog index and blog posts~~
* ~~Make nicer links by stripping off the page extensions~~
* Finish off team bios
* ~~First blog should be written and published~~
* ~~The `Send Message` functionality needs to be hooked up to actually send email.~~
* ~~Need to implement CAPTCHA~~
* ~~Fix margins on mobile (blog post images are centered either)~~
* ~~Improve media breakpoints for responsive webpage and overall sizes/formatting/styling~~
* ~~SEO - meta tags~~
* Add back in calendar thing for setting up meeting
* Create 404 error page
* ~~Google Analytics~~
* GDPR notice

### Nice to haves

* Write tests
* Write deployment pipeline
  * IE polyfills
  * ~~Use minified pure libs (perhaps switch use the provided CDNs?)~~
  * ~~Use S3 + Cloudfront + Route53~~
* README needs to be updated with how to save and publish blogs
* ~~Use sass variables~~
* The Techorrect logo SVG still has hardcoded colors in them.  Remove the fill/strokes, and then set them in the CSS.
* Automate .svg files -> inline SVG creation.  All existing SVGs were done manually
