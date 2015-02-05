
#include_recipe "base::hostname"
#include_recipe "base::modules"
#include_recipe "base::timezone"
include_recipe "vagrant-centos-packages::packages"
#include_recipe "base::root"
#include_recipe "base::scripts"
