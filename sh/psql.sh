#!/bin/bash

. ./sh/env.sh

   psql --host=$DB_HOST \
    --dbname=$DB_NAME \
    --username=$DB_USERNAME \