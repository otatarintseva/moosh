#!/bin/bash
source functions.sh

install_db
install_data
cd $MOODLEDIR

if $MOOSHCMD sql-run "SELECT * FROM {user} WHERE username='testteacher'" | grep "testteacher@moodle.org"; then
  exit 0
else
  exit 1
fi
