#!/bin/bash

pattern=(	"temporarily deferred due to user complaints"
                "has a poor reputation on the Cloudmark Sender Intelligence (CSI) list"
                "Please try again. We have limits for how many messages can be sent per hour and per day"
                "Relay access denied")

for dirs in /var/spool/exim/msglog/*
do
  	j=0;
	echo -e "ENTERING ${dirs}....\n\n"

        limit=`ls -1 $dirs | wc -l`
        dirpath="${dirs}/*"
        for file in $dirpath
        do

                #echo -en "\e[1A"; echo -e "\e[OK\r$i / $limit - ${file}";
                messageId=$(basename $file)
                #result=`/etc/exim/removeBounce $messageId`
                #exitCode=$?
                statusLabel="NOT FOUND!                                ";

                logs=`exim -Mvl ${messageId}`
                foundRule=0
                for ((i=0; i < ${#pattern[@]}; i++))
                do
                  	find=`echo $logs | grep "${pattern[$i]}"`
                        statusCode=$?
                        if [ $statusCode == 0 ]; then
                                remove=`exim -Mrm ${messageId}`
                                foundRule=1
                                break
                        fi
                done

                if [ $foundRule == 1 ]; then
                        statusLabel="FOUND!                            "
                fi


                echo -en "\e[1A"; echo -e "\e[OK\r$j / $limit - ${file} - ${statusLabel}" ;

                if [ "$j" -ge $limit ];
                then
                    	exit
                fi

                j=$((j+1))
                #echo $i
        done;

done;
