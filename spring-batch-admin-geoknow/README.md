# Geoknow Spring batch admin

This is an implementation of [spring-batch-admin-sample](https://github.com/spring-projects/spring-batch-admin/) for the GeoKnow generator. It uses [1.3.0.RELEASE](https://github.com/spring-projects/spring-batch-admin/releases/tag/1.3.0.RELEASE). 	

## Install

1. Use debian packages

A preconfigured setup can be installed to a Linux system trough the Linked Data Stack Debian repository


		# download the repository package
		wget http://stack.linkeddata.org/ldstable-repository.deb
		# install the repository package
		sudo dpkg -i ldstable-repository.deb
		# update the repository database
		sudo apt-get update
		# install spring-batch-admin-geoknow
		sudo apt-get install spring-batch-admin-geoknow

2. Compile from souces

		# clone this reposotory
		git clone git@github.com:GeoKnow/spring-batch-admin.git
		# move to the project directory
		cd spring-batch-admin-geoknow
		# package it
		mvn package

## Configure

The defaiult configuration of spring-batch-admin-geoknow uses a in memory hsql database. You can change the configuration files directly in the webapp:

		spring-batch-admin-geoknow/WEB-INF/classes/batch-hsql.properties

Or you can to configure from sources as described in [spring-batch-admin configuration](http://docs.spring.io/spring-batch-admin/reference/infrastructure.html).

## Run
You can deploy the file on Tomcat or, run the admin service using jetty:

	  mvn -D jetty.port=9999 jetty:run
  
  