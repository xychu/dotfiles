#!/bin/bash

wget --no-check-certificate https://password.corp.redhat.com/newca.crt
certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n redhatca -i newca.crt

sudo mkdir -p /etc/opt/chrome/policies/managed/
echo "{ \"AuthServerWhitelist\": \"*.redhat.com\", \"AuthNegotiateDelegateWhitelist\": \"*.redhat.com\" }" > /tmp/redhat-corp.json
sudo mv /tmpredhat-corp.json /etc/opt/chrome/policies/managed/redhat-corp.json

