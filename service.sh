#!/usr/bin/env bash
# Swiftstack service 


#if [ -n "$gitTag" ]; then
#    agentSendLogMessage  "Found gitTag parameter gitTag = ${gitTag}"
#else
#     agentSendLogMessage  "Didn't find custom parameter gitTag. Using gitTag=master"
#     gitTag="netscalerext"
#fi


#yum install -y python-pip
#pip install pip --upgrade
#pip install nsnitro

#wget https://wsh17/cc-ss01/SS01.py
python SS01.py
