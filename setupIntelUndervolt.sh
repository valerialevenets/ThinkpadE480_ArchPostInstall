#!/bin/bash

sed -i 's/undervolt 0 \x27CPU\x27 0/undervolt 0 \x27CPU\x27 -100/g' /etc/intel-undervolt.conf
sed -i 's/undervolt 1 \x27GPU\x27 0/undervolt 1 \x27GPU\x27 -50/g' /etc/intel-undervolt.conf
sed -i 's/undervolt 2 \x27CPU Cache\x27 0/undervolt 2 \x27CPU Cache\x27 -100/g' /etc/intel-undervolt.conf

sed -i 's/enable no/enable yes/g' /etc/intel-undervolt.conf

intel-undervolt apply
systemctl enable intel-undervolt.service
systemctl start intel-undervolt.service