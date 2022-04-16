#!/bin/bash

/usr/bin/pg_ctl "12" main start
su - postgres -c 'psql postgres'
/usr/bin/pg_ctl "12" main stop

# Normal startup
/sbin/my_init