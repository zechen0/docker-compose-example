image:
	cd images/nginx && docker build -t yourregistry.com/nginx:czexample .
	cd images/php && docker build -t yourregistry.com/php-7.1.6:czexample .

devup:
	cd env/localdev && docker-compose up -d 
	cd env/localdev && docker-compose ps

devdown:
	cd env/localdev && docker-compose down

devps:
	cd env/localdev && docker-compose ps

#####################
# You don't need to run this publishimage to test anything locally
#
# This is just to show you how to publish the images
#
# You will need this only when you finally want to publish the images
# so that other members in the team can devup without running the make image
####################
publishimage:
	docker push yourregistry.com/nginx:czexample
	docker push yourregistry.com/php-7.1.6:czexample
