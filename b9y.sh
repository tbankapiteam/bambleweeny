#!/bin/sh

# Run an embedded Redis instance if Redis connection info is not provided
if [ "$redis_host" = "" ]
then
  echo "Starting embedded Redis instance"
  export redis_host=localhost
  export redis_port=6379
  /usr/bin/redis-server &
fi

python /app/server.py
