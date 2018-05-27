#!/bin/bash

function DBG {
	echo "=============> [`date`] $0: $1"
}

DBG "Starting"

cd /
git -C /opt clone https://oauth2:PHvBxcxGoGupR2kkHEDV@gitlab.com/softline_openedx/edx-analytics-data-api
cd /opt/edx-analytics-data-api
make develop
./manage.py migrate --noinput
./manage.py migrate --noinput --database=analytics
./manage.py set_api_key edx edx

DBG "Done!"
