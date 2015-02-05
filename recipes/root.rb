# Add ssh root config for Berkshelf
cookbook_file "/root/.ssh/config" do
  source "ssh_config"
  mode 0644
  owner "root"
  group "root"
end

# Add sshd_config to disable root login
cookbook_file "/etc/ssh/sshd_config" do
  source "sshd_config"
  mode 0644
  owner "root"
  group "root"
  notifies :restart, "service[ssh]", :delayed
end

service "ssh" do
  action :nothing
end
