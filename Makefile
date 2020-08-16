#
# Site Configuration - adjust as necessary
#
DISTRIBUTION = __CLOUDFRONTDISTRO_XXX
#
GANALYTICSID = __GOOGLEAANALYSTICS_XXX
#
SITENAME = "__PLAINTEXT SITENAME_XXX"
#
SITETITLE = "___TAGLINE_FOR_YOUR_SITE_XXX"
# Site hostname, eg yoursite.com
SITEDNS = __SITE_DNS_XXX
# Name of S3 bucket
BUCKET = __BUCKET_XXX

# Used for collecting new blog posts from medium
BLOGROOT = https://medium.com/@youruser/yourpost

#
# Standard Configuration - you shouldn't have to change these
#
SERVERPORT = 8000
STAGEDIR = site
SRCDIR = src
BLOGDIR = /blog

SRCS_J2 = $(shell find $(SRCDIR) -type f -name '*.j2')
OBJS_J2 = $(patsubst $(SRCDIR)/%.j2, $(STAGEDIR)/%.html, $(SRCS_J2))

SRCS_MD = $(shell find $(SRCDIR) -type f -name '*.md')
OBJS_MD = $(patsubst $(SRCDIR)/%.md, $(STAGEDIR)/%.html, $(SRCS_MD))

#
# References to local programs
#
BUILDPY = python3 bin/render.py --maps "SITENAME=${SITENAME}" --maps "GANALYTICSID=${GANALYTICSID}"
BLOGIMPORTER = sh bin/blogimporter.sh
BLOGINDEXER = sh bin/blogindexer.sh
BLOGREDIRECTOR = sh bin/blogredirector.sh

.phony: all

all: build_j2 build_md

build_j2: $(OBJS_J2)

build_md: $(OBJS_MD)

$(STAGEDIR)/%.html: $(SRCDIR)/%.j2
	mkdir -p "$(@D)"
	gramma check --disable typos -p $< >  $(<).gramma | true
	$(BUILDPY) $< > $@

$(STAGEDIR)/%.html: $(SRCDIR)/%.md
	mkdir -p "$(@D)"
	aspell check --mode=markdown --dont-backup $<
	gramma check --disable typos -p $< >  $(<).gramma | true
	$(BUILDPY) $< > $@

clean:
	find $(STAGEDIR) -name '*.html' -print0 | xargs -0 rm
	find $(SRCDIR) -name '*.gramma' -print0 | xargs -0 rm

push:
	(cd $(STAGEDIR); aws s3 sync .  s3://$(BUCKET) --exclude "*"  --include "*.html" --include "*.js" --include "*.css" --include "*.png")

flush:
	aws cloudfront create-invalidation --distribution-id $(DISTRIBUTION) --paths "/*"

blogimport:
	mkdir -p $(SRCDIR)$(BLOGDIR)
	$(BLOGIMPORTER) $(SRCDIR) $(BLOGDIR) $(BLOGROOT)
	$(BLOGREDIRECTOR) $(SRCDIR) $(BLOGDIR)

blogindex:
	mkdir -p $(SRCDIR)$(BLOGDIR)
	$(BLOGINDEXER) $(SRCDIR) $(BLOGDIR)

install:
	pip3 install -r requirements.txt
	npm install -g mediumexporter
	npm install -g gramma
	brew install aspell awscli

server:
	livereload -p $(SERVERPORT) -w 2 $(STAGEDIR)

help:
	@echo "default:    push to stage"
	@echo "clean:      delete all staged files"
	@echo "push:       push to production"
	@echo "flush:      invalidate cloudfront cache"
	@echo "blogimport: grab latest blog posts and import"
	@echo "blogindex:  remap blog post indexes"
	@echo "install:    install utilities on this machine"
	@echo "server:     run test server"
