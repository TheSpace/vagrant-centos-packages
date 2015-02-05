# chef update berks
cookbook_file "/usr/local/bin/chef-update.sh" do
  source "chef-update.sh"
  mode 0755
  owner "root"
  group "root"
end
