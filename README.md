# Introduction

This software heavily leverages common open source components to
deliver a streamlined commandline experience in developing web sites.

## Getting Started

### Software Installation

brew, python3, pip3, and npm are prerequisites, and must be installed first.

run `make install` to install the other dependencies

### Infrastructure Build

1. Create an AWS account if you don't have one

2. Create an API key through the AWS UI and install it by running `aws configure`. It will need permissions to access the S3 bucket and CloudFront distributions we are about to create.

3. Create a S3 Bucket for your static content

4. Create a CloudFront Distribution

    Don't forget to reference a 404 page in the distribution's settings

5. Create a Property in Google Analytics

    This software utilizes Google Analytics. You'll need to get a
    property id to add to the project Makefile. Look here for more info.

    https://support.google.com/analytics/answer/1008015?hl=en

6. Integration

    Update the first block in the Makefile with your cloudfront
    distribution ID, Google Analytics Property, and site configuration


## Lifecycle

### Customizing the Layout

The `site` folder contains css, images, and javascript. You will
need to update the two generic banner images (one for regular, one
for dark mode). These images should be 3784 x 2558, 8-bit/color RGBA in order to play well with OpenGraph.

Out-of-the-box, the CSS supports responsive device scaling as well
as light and dark modes. There may be other changes you wish to make
such as typefaces.

### Title Blocks

### Page Templates

Each that gets rendered from a source file to HTML uses a template
to provide a shared, common format so that all pages look similar.

Although it's trivial to add others, by default, there are two
layouts provided:

    * main.html` is the default template used for "regular"
      pages
    * `error.html` is used for error responses (for example,
      page not found 

### ROT-13 Support

In order to obfuscate harvesting of email addresses by bots,
elements with the rot13 class will be modified by javascript at
page load time. 

For example, the following code will translate to `hello@my.site`.
Note the encoded `mailto:` in the href block.

```
<span><a href="znvygb:uryyb@lbhe.fvgr" class="rot13">uryyb@lbhe.fvgr</a></span>
```

By default, this is used on the contact page, but you can put it
wherever you need.

There are many ways of generating the encoded version, but having
https://rot13.com/ translate for you may be the easiest.


## Development Workflow

Run `make server` to start the development server. This will mirror
what's running in the stage environment.

Run `make` to take the edits in the `src` directory and push them to
the `site` staging directory. This will perform several additional
functions, like spelling and grammar checks. Spelling checks will
block the push, grammar errors will be extracted to a separate `.gramma`
file.
 
Run `make push` to push the current version of staging to production.

Normally, CloudFront will perform a rolling update of the changes you
pushed to the S3 Bucket to some schedule, but it won't be immediate.
If you need to force an update (because, for example, you realize that
you made a boo-boo and want a fast fix), then run `make flush`.

`make clean` will remove all of the generated HTML from the site
directory, as well as all of the gramma files in `src`.

## Architecture

Source files are processed as jinja2 templates, and corresponding html
is generated. You can create source files as j2 (Jinja2 templates),
markdown, or html.

The flow is:

1. translate all .md files to .j2
2. translate all .j2 files to html

The html produced is stored in the staging directory.

Content is promoted to production by copying deltas to an S3 bucket,
which is then published via a Cloudfront Distribution.


## Limitations

Python packages are not installed via virtualenv. You can perform this
step manually if you so choose.

This software is designed to run on Macs, you'll need to install the
required packages manually if you use Linux or Windows.

## License

Licensed under the Apache License 2.0

## Contributing

We use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) and encourage code contributions and feedback.