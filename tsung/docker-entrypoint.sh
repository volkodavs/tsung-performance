#!/bin/bash

if [ $SERVER_HOST != "" ]; then
    sed -i "s/#SERVER_HOST/$SERVER_HOST/g; s/#SERVER_PORT/$SERVER_PORT/g; s/#SERVER_TYPE/$SERVER_TYPE/g" /perf-test/tsung-manifest.xml
else
    echo WARNING: SERVER_HOST is not set, will use default configuration
    sed -i "s/#SERVER_HOST/localhost/g; s/#SERVER_PORT/8080/g; s/#SERVER_TYPE/tcp/g" /perf-test/tsung-manifest.xml
fi


tsung -f /perf-test/tsung-manifest.xml $1
