#!/bin/bash

SSH_ENV="$HOME/.ssh/environment"
SSH_KEYS="$HOME/.ssh/added_keys"

# Call start_agent (file) (id)
# Will store agent info in (file) and add key id_rsa.(id)
function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
     echo succeeded
     chmod 600 ${SSH_ENV}
     source ${SSH_ENV} > /dev/null
}

# If key is present in added_keys file, do nothing, otherwise call ssh-add
function check_and_add_key {
    grep $1 ${SSH_KEYS} &> /dev/null || {
        /usr/bin/ssh-add $1
        echo $1 >> ${SSH_KEYS}
    }
}

if [[ -f ${SSH_ENV} ]]; then
     source ${SSH_ENV} > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || { 
         start_agent;
         rm ${SSH_KEYS} &> /dev/null
     }
else
    start_agent;
    rm ${SSH_KEYS} &> /dev/null
fi

SSH_ID=""
if [[ "$1" != "" ]]; then
    SSH_ID=.$1
fi

check_and_add_key $HOME/.ssh/id_rsa${SSH_ID}
