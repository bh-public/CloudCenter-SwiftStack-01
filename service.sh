#!/usr/bin/env bash
# Swiftstack service


if [ -n "$gitTag" ]; then
    agentSendLogMessage  "Found gitTag parameter gitTag = ${gitTag}"
else
     agentSendLogMessage  "Didn't find custom parameter gitTag. Using gitTag=master"
     gitTag="swiftstack container create"
fi

yum install -y python-pip
pip install pip --upgrade
pip install nsnitro
yum install -y python-swiftclient
# Get the python code for the service
echo Getting external service ...
wget https://raw.githubusercontent.com/bh-public/cc-ss01/master/SS01.py -O SS01.py
# Run the Service
echo Running Python script ...
python SS01.py
