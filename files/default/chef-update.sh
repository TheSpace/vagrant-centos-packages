#!/bin/bash

cd /etc/chef
if [ -f Berksfile.lock ] ; then
  echo "Removing Berksfile.lock"
  sudo rm Berksfile.lock
else
  echo "No Berksfile.lock file present"
fi

if [ -d /var/chef-solo/cookbooks ] ; then
  echo "Removing cookbooks directory"
  sudo rm -rf /var/chef-solo/cookbooks
else
  echo "No cookbook directory"
fi

sudo berks vendor /var/chef-solo/cookbooks
