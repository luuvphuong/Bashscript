#!/bin/bash

API="https://api.telegram.org/bot7138980867:AAFSCc-O_l1owbq6mdQBb0J6W18dMvYS0l0/sendMessage"
chatid=" -4215079471 -4568392397 "   # them id group nhan canh bao
# ham gui canh bao kiem tra dich vu
function check_service() {
	for x in $chatid
	do
	curl -S -X POST "$API" -d "chat_id=$x&parse_mode=html&text=
	--------<strong>Check service status</strong>--------
	---------------BEGIN---------------
	<b>SERVER</b> <b><u>`hostname -I | awk '{print $1}'`</u></b>
	<b>Status detail</b>
	<code>`./check_service.sh`</code>
	<b>Send time:</b> <em>`date +%F" "%T`</em>
	---------------END-----------------"
	done
}

#ham gui canh bao disk
function check_disk() {
        for x in $chatid
        do
		if ! ./check_disk.sh ; then
        curl -S -X POST "$API" -d "chat_id=$x&parse_mode=html&text=
        --------<strong>Check Disk Usage</strong>--------
        ---------------BEGIN---------------
        <b>SERVER</b> <b><u>`hostname -I | awk '{print $1}'`</u></b>
        <b>Status detail</b>
        <code>`./check_disk.sh`</code>
        <b>Send time:</b> <em>`date +%F" "%T`</em>
        ---------------END-----------------"
		else
			echo "OK"
		fi
		
        done
}

check_service

check_disk

