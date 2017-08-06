#!/bin/bash
# Stop the server
kill -s HUP `cat run.pid`
# Start the server
nohup http-server > /dev/null 2>&1 & echo $! > run.pid
