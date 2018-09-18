#!/bin/bash
#sed -i 's/envisalinkIP/$EVL_IP/g' /var/AlarmServer/alarmserver.cfg
#sed -i 's/user/$PASSWORD/g' /var/AlarmServer/alarmserver.cfg
#sed -i 's/usercode/$USERCODE/g' /var/AlarmServer/alarmserver.cfg
python /var/AlarmServer/alarmserver.py -c /var/AlarmServer/alarmserver.cfg
