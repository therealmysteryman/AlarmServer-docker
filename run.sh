#!/bin/bash
sed -i 's/envisalinkIP/$EVL_IP/g' /var/AlarmServer-master/alarmserver.cfg
sed -i 's/user/$PASSWORD/g' /var/AlarmServer-master/alarmserver.cfg
sed -i 's/usercode/$USERCODE/g' /var/AlarmServer-master/alarmserver.cfg
/usr/bin/python /var/AlarmServer-master/alarmserver.py -c /var/AlarmServer-master/alarmserver.cfg
