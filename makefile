REMOTE=mwolf@kalamazooacs.org:/srv/prettywolves/
# CONFIG=_config.yml,_config-deploy.yml
CONFIG=_config.yml
BUILD=jekyll build --config $(CONFIG)

# all: css/kacs.css
# 	$(BUILD)
all:
	$(BUILD)

# css/kacs.css: css/kacs.less
# 	lessc --clean-css css/kacs.less css/kacs.css

deploy: all
	s3_website push

serve:
	jekyll serve --watch
