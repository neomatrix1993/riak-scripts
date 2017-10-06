#!/bin/sh
sed -i '/\# End of file/i *                soft    nofile         100000\n*                hard    nofile         200000' /etc/security/limits.conf
echo limits.conf updated with new values
