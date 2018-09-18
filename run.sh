#!/bin/bash
sed -i 's/envisalinkIP/$EVL_IP/g' alarmserver.cfg
sed -i 's/user/$PASSWORD/g' alarmserver.cfg
sed -i 's/usercode/$USERCODE/g' alarmserver.cfg
/usr/bin/python alarmserver.py -c alarmserver.cfg
