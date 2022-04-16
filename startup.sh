#!/bin/bash

service postgresql start
su - postgres -c 'psql postgres'
service postgresql start

# Normal startup
/sbin/my_init