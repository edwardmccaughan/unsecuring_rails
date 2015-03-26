#!/bin/bash
 
echo "restarting"
kill $(cat tmp/pids/server.pid)
bundle
rake db:migrate assets:precompile
nohup rails s &