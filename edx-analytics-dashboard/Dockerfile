#
# Open edX Analytics Pipeline Dockerfile (Hadoop 2.3.0)
#

FROM ubuntu:16.04
MAINTAINER Philippe Chiu

# Prepare the operating system
RUN apt-get update
RUN apt-get upgrade -y

# Install dependencies
RUN apt-get install -y git make python-pip npm libmysqlclient-dev python-dev nodejs python-django-nose
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Build edx-analytics-dashboard
ADD build/build-edx-analytics-dashboard.sh /tmp/
RUN bash -c /tmp/build-edx-analytics-dashboard.sh

EXPOSE 9000
#CMD ["/usr/bin/python", "/opt/edx-analytics-dashboard/manage.py", "runserver", "0.0.0.0:9000"]
