#!/bin/bash

set -e

echo 'root:'${ROOT_PASSWORD} |chpasswd
# Start the ssh server
/etc/init.d/ssh restart

exec "$@"
