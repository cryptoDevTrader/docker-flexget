#!/bin/sh
rm -f /flexget/.config-lock
/usr/bin/flexget -c /flexget/config.yml --loglevel ${LOG_LEVEL:-verbose} daemon start