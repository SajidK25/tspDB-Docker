FROM ubuntu:focal

RUN apt-get -y update \
&& apt-get  -y install wget \
&& apt-get  -y install curl
#gnupg2 ca-certificates
# RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |  apt-key add -
# RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
# RUN apt-get -y update

RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends postgresql-12 postgresql-plpython3-12 
