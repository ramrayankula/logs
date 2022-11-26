#! /bin/bash

	echo "Copying Httpd Server Access_log and Error_log files in log folder) "
	
	echo "*****************************************************************"
	cd /home/vagrant/logs/accesslog/
	sudo touch "access_log_$(date +"%F %T")"
	sudo cp /var/log/httpd/access_log  /home/vagrant/logs/accesslog/"access_log_$(date +"%F %T")"

	cd /home/vagrant/logs/errorlog/
	sudo touch "error_log_$(date +"%F %T")"
	sudo cp /var/log/httpd/error_log  /home/vagrant/logs/errorlog/"error_log_$(date +"%F %T")"
	
	echo "*****************************************************************"
	echo "Log files copied successfully !!"	

	echo "*****************************************************************"
	cd /home/vagrant/logs/
	git add .
	git commit -m "daily log update"
	git push origin master
	echo "*****************************************************************"
	echo "files uploaded to git successfulyy !!"
	echo "*****************************************************************"

