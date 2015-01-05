#
# Regular cron jobs for the spring-batch-admin-geoknow package
#
0 4	* * *	root	[ -x /usr/bin/spring-batch-admin-geoknow_maintenance ] && /usr/bin/spring-batch-admin-geoknow_maintenance
