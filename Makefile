all: commands

## commands: show all commands.
commands:
	@grep -E '^##' Makefile | sed -e 's/## //g'

## serve: build site and serve locally
serve:
	bundle exec jekyll serve --config _config.yml,_config_dev.yml  --incremental

## clean: remove existing site build
clean: 
	rm -rf _site 
	find . -name .DS_Store -exec rm {} \;

## build: build site for deployment to server
build:
	bundle exec jekyll build  --incremental


## deploy: build site and copy to deployment server
deploy:
	bundle exec jekyll build --incremental
	. ./bin/deploy_site.sh
