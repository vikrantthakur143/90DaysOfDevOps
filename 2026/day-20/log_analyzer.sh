#!/bin/bash


if [[ -z $1 ]]; then
	echo "Log path not defined."
else
	log_path="$1"
	if [[ ! -f log_path ]]; then
		echo "Log file not exist"
	fi
fi



echo "Total error or failed strings in log file: $(grep -E 'ERROR|Failed' -R /var/log/messages |wc -l)"

grep -E 'ERROR|Failed' -R /var/log/messages

