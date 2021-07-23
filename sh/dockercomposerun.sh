#!/bin/bash

#connect to database
docker exec -it postgres \
    sh sh/psql.sh 