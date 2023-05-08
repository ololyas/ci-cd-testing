STACK := $(if $(STACK),$(STACK),dev)
include ./config.$(STACK).env

deploy: 
	npx wrangler pages publish --project-name ci-cd-testing .

deploy-stg: 
	npx wrangler pages publish --project-name ci-cd-testing --branch stg

lint:
	eslint .
