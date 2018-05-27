#
# Open edX Analytics Data Api Dockerfile
#

FROM ubuntu:16.04
MAINTAINER Philippe Chiu

# Prepare the operating system
RUN apt-get update
RUN apt-get upgrade -y

# Install dependencies
#RUN apt-get install -y git llvm-gcc build-essential make cmake automake autoconf libtool zlib1g-dev
RUN apt-get install -y git build-essential python-mysqldb python-pip

# Build edx-analytics-data-api
ADD build/build-edx-analytics-data-api.sh /tmp/
RUN bash -c /tmp/build-edx-analytics-data-api.sh

EXPOSE 8000
ENTRYPOINT python /opt/edx-analytics-data-api/manage.py runserver 0.0.0.0:8000
