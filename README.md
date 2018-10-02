# Techorrect.com website

Techorrect's website is written using [Jekyll](https://jekyllrb.com) and [Pure.css](https://purecss.io).  To develop and test the site locally, run `jekyll s` in this repo, and it should launch the site at [http://localhost:4000](http://localhost:4000).  Jekyll makes it easy to write blog posts via git and markdown, and Pure.css is a lightweight CSS library.

All images are currently inlined SVGs for performance and flexibility.  They can be found under `_includes`.

## TODO

Here are the remaining items to do for the website, in order of importance

* Improve formatting in Contact Us section
* The About page needs to be created
* The `Send Message` functionality needs to be hooked up to actually send email.  Perhaps trigger a lambda?
* Need to implement CAPTCHA
* Improve media breakpoints for responsive webpage and overall sizes/formatting/styling
* Google Analytics
* GDPR notice
* Write tests
* Write deployment pipeline
  * IE clearfixes
  * Use minified pure libs (perhaps switch use the provided CDNs?)
* The Techorrect logo SVG still has hardcoded colors in them.  Remove the fill/strokes, and then set them in the CSS.
