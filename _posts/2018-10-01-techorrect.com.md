---
author: ed
---
Welcome!  The techorrect.com website has just been redesigned, and we now have a blog!  The previous site was hosted on a single VM running Wordpress.  However, as the site is fairly static, simple, and low-traffic, moving the site to AWS S3 kept looking more and more promising:

* No need to worry about keeping OS or Wordpress up to date
* Pay only for the actual website traffic/usage instead of keeping a VM up 24/7
* Take advantage of Amazon's CDN - Cloudfront - to ensure low latency

Since we needed to create static pages in order to host them on S3, the site was built using [Jekyll](https://jekyllrb.com).  The site's code is now in git, making it easier to view revision history and test.  Additionally, the email form functionality was implemented using AWS's API Gateway and Lambda.  To summarize, here's the overall setup of our website:

![techorrect.com site diagram](/assets/images/techorrect-site-diagram.png)

* Static-site files are generated with Jekyll
* Files are then uploaded to S3, which is configured to serve these over HTTP
* A Cloudfront distribution is configured to serve these files
* Route 53 DNS rules are created to point techorrect.com to the Cloudfront distribution
* For emails, an AWS Lambda function is created to send emails, using AWS SES
* An API Gateway resource maps a public API endpoint to the email Lambda function

Even with all these different AWS services, costs should be less than that of a VM.  We no longer need to manage any VMs or Wordpress, and can simply focus on the site's content.  In a future post, we will talk about how we manage updates to the site through a pipeline.
