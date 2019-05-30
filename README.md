# Mattermost-log-tail
tail a log on a local or rsyslog server and set-up a daemon to run it 

This does not cover instructions on how to create an incoming webhook or how to set up a mattermost server and the below instructions 
have been implemented on a CentOS 7 server w/ SELinux disabled and TCP/UDP  514 ports open for rsyslog to receive logs


first decide where to put the mattermost log tail script

I typically mkdir "sweet-scripts" in /usr/local/bin/

once you decide where to place the script then modify the logtail.sh for your variables
chmod +x logtail.sh

then cp daemon config --> /etc/systemd/system  then rename it accordingly

below we are calling it daemon.service (this will be whatever you want to call it)

systemctl start daemon.service

systemctl enable daemon.service


Alas you will have a working tail to your log to export the specified text to mattermost via webhook.


