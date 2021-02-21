#!/bin/bash
echo 'root:'${ROOT_PASSWORD} |chpasswd
# Start the ssh server
/etc/init.d/ssh restart
