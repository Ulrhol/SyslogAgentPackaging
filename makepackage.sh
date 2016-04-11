#!/bin/bash

####
# Download the 32 and 64 bit versions
####

if [ ! -f syslogagent_v2.3_x64.zip ]; then
  wget http://www.syslogserver.com/syslogagent_v2.3_x64.zip
fi
if [ ! -f syslogagent_v2.3_x32.zip ]; then
  wget http://www.syslogserver.com/syslogagent_v2.3_x32.zip
fi

if [ ! -d syslogagent32 ]; then
  unzip -d syslogagent32 syslogagent_v2.3_x32.zip
fi
if [ ! -d syslogagent64 ]; then
  unzip -d syslogagent64 syslogagent_v2.3_x64.zip
fi

if [ -f syslogagent32/SyslogAgent/license.txt ]; then
  cp syslogagent32/SyslogAgent/license.txt .
fi

makensis syslogagent32.nsis
