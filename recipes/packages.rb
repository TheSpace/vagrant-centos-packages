# Install requisite packages
%w{ant nano rsync git lvm2 unzip telnet ntp php-pecl-memcached php-cli php-curl}.each do |pkg|
    package pkg do
        action :install
    end
end

# %w{ant nano rsync git lvm2 unzip telnet ntp php-pecl-memcached php-cli php-curl php-gd php-suhosin php-pspell php-xcache php-mcrypt php-devel php-pear php-phpunit-PHPUnit php-mysql}.each do |pkg|
#     package pkg do
#         action :install
#     end
# end

# %w{compass}.each do |pkg|
#    gem_package pkg do
#       action :install
#         end
# end