# Geoknow Spring batch admin

This is an implementation of [spring-batch-admin-sample](https://github.com/spring-projects/spring-batch-admin/) for the GeoKnow generator. It uses [1.3.0.RELEASE](https://github.com/spring-projects/spring-batch-admin/releases/tag/1.3.0.RELEASE). 	

## Install


## Configure

If you want to save all job execution status in a database, you need to provide the data connection in""


## Run
To run the admin service using jetty:

	  mvn -D jetty.port=9999 jetty:run -DENVIRONMENT=mysql
  
  