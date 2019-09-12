#!/bin/bash
while sleep 0.5; do
	echo "http GET 139.59.223.216 Host:myapp.com `date`"
    #curl -f --header 'Host: myapp.com' 159.89.211.194 > /dev/null
	#http GET 159.89.211.194 Host:myapp.com > /dev/null
	
    curl -f --header 'Host: myapp.com' 139.59.223.216 > /dev/null
	#http GET 139.59.223.216 > /dev/null
done
