#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.1 "/etc/init.d/rtl_tcp restart"
/usr/bin/welle-cli -F rtl_tcp,192.168.1.1:1234 -Dw 8282
