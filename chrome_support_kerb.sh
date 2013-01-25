#!/bin/bash

wget --no-check-certificate https://password.corp.redhat.com/newca.crt
certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n redhatca -i newca.crt

sudo mkdir /etc/opt/chrome/policies/managed/
echo "{ \"AuthServerWhitelist\": \"*.redhat.com\", \"AuthNegotiateDelegateWhitelist\": \"*.redhat.com\" }" >/etc/opt/chrome/policies/managed/redhat-corp.json

