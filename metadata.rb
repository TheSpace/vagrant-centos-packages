name             "vagrant-centos-packages"
maintainer       "Daniel Morrison"
maintainer_email "daniel.morrison@bbc.co.uk"
license          "MIT"
description      "Configures basic server parameters: hostname, timezone, kernel modules."
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.0"

recipe "vagrant-centos-packages", "Configure all parameters"
recipe "vagrant-centos-packages::hostname", "Configure node hostname"
recipe "vagrant-centos-packages::modules", "Configure node modules"
recipe "vagrant-centos-packages::timezone", "Configure node timezone"

supports "ubuntu"
