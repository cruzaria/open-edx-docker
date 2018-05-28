# [WIP] Docker-compose Open edX production stack

This is a work-in-progress.

The production stack is sufficient for a minimal production deployment of Open edX.

## Lauch a production stack

Prepare build:

    make directories

Build and run:

    docker-compose build # go get a coffee
    docker-compose up

The LMS will be reachable at [http://online.academy4cloud.com/](http://online.academy4cloud.com/).

The CMS will be reachable at [http://studio.academy4cloud.com/](http://studio.academy4cloud.com/).

For local development, you should point to http://localhost:8800.

On the first run you will need to migrate the database and collect static assets:

    make migrate
    make assets

To import the Open edX demo course, run:

    make import-demo-course

To daemonize:

    docker-compose up -d

## Development

Open a bash in the lms:

    docker-compose run lms bash

Open a python shell in the lms or the cms:

    make lms-shell
    make cms-shell

## Analytics

- go to folders edx-analytics-***

Build and run in each folders:

    docker-compose build
    docker-compose up
 
 ## DBs
 
    run docker-maria
    run docker-mongo
