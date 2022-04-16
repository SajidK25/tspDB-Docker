FROM ubuntu:focal

RUN apt-get -y update \
    && apt-get -y install wget \
    && apt-get -y install curl \
    && apt-get -y install git
#gnupg2 ca-certificates
# RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |  apt-key add -
# RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
# RUN apt-get -y update
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y --no-install-recommends postgresql-12 postgresql-plpython3-12 

WORKDIR /usr/lib/python3.8
# RUN curl https://bootstrap.pypa.io/pip/3.6/get-pip.py -o get-pip.py
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN apt-get install -y python3-distutils
RUN python3.8 get-pip.py

WORKDIR /
RUN git clone https://github.com/AbdullahO/tspdb.git
RUN pip3 install tspdb/.
WORKDIR /tspdb/extension_py3
COPY tspdb.control /usr/share/postgresql/12/extension/tspdb.control
COPY tspdb--0.0.1.sql /usr/share/postgresql/12/extension/tspdb--0.0.1.sql
RUN pwd 
RUN ls -al
WORKDIR /
ADD startup.sh ./
RUN chmod +x star startup.sh
ENTRYPOINT ["/startup.sh"]