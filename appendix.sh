####################
## 1. Terminal Software
####################

# Windows: TetaTeam, PuTTY, Poderosa
# Linux, FreeBSD: xterm, kterm, gnome-terminal, Konsole
# Mac: Terminal.app, iTerm2

# ref: ex4) stty command

# tty command: current virtual terminal device
# generally tty is physical display and keyboard | pts is virtual terminal

# example)
# suppose there are ttys000 and ttys001
# echo "Hello" > /dev/ttys001


####################
## 2. Linux Command Option
####################

# ref: ex1) getopts command


####################
## 3. Virable Name
####################

# Usually use Snake_Case than CamelCase


####################
## 4. Cron Script
####################

# Linux: crond
# FreeBSD: cron

# path: /etc/crontab
# =>
# The periodic and atrun jobs have moved to launchd jobs
# See /System/Library/LaunchDaemons
#
# minute	hour	mday	month	wday	who	command

# edit mode: $ crontab -e
# ex)
# 0 1 * * * /usr/bin/command

# list: $ crontab -l
# remove: # crontab -r

# crontab path by user
# Linux: /var/spool/cron/USERNAME
# FreeBSD: /var/cron/tabs/USERNAME

# cron manual
# $ man 1 crontab: command for user management
# $ man 5 crontab: crontab definition
# man cron: describe cron daemon

# In Mac
# Use launchd.plist than cron

# $ man launchd
# $ man launchd.plist


####################
## 5/6. pv/dialog command
####################

####################
## 7. set command
####################

# ref: ex21) -u option ex94) -e option

set -- "-all" "Daegu" "Choi" "Kim"
echo $2


####################
## 8. Web Service Monitoring
####################

# ref
# ping: ex114)
# process: ex111)
# log: grep
# port: nc ex61
# http header: curl ex110
# static file/application: curl ex115)
# backend server: ex116,117)

# Software
# Zabbix, Nagios, Munin-monitoring