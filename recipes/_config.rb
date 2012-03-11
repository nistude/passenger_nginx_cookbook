# Configure passenger module

template "#{node['nginx']['dir']}/conf.d/passenger.conf" do
  mode "0644"
  notifies :restart, "service[nginx]"
end
