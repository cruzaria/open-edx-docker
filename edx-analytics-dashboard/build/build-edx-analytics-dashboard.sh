#!/bin/bash

function DBG {
	echo "=============> [`date`] $0: $1"
}

DBG "Starting"

#apt-get install -y npm
git -C /opt clone https://oauth2:PHvBxcxGoGupR2kkHEDV@gitlab.com/softline_openedx/edx-analytics-dashboard.git
cd /opt/edx-analytics-dashboard
pip install -r requirements.txt
make develop
make migrate
make static

DBG "Done!"
