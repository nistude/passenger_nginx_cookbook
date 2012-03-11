# Setup nginx module

nginx_configure_flags = node['nginx']['configure_flags']
nginx_configure_flags.delete_if { |item| item.match(/^--prefix/) }

bash "set dynamic passenger config" do
  cwd "#{node['nginx']['dir']}/conf.d"
  code <<-EOH
    echo "passenger_root `passenger-config --root`;" > passenger_root.conf
    echo "passenger_ruby `which ruby`;" > passenger_ruby.conf
  EOH
  action :nothing
  notifies :restart, "service[nginx]"
end

bash "install passenger nginx module" do
  code <<-EOH
    passenger-install-nginx-module --auto \
      --nginx-source-dir="#{Chef::Config[:file_cache_path]}/nginx-#{node['nginx']['version']}" \
      --prefix="#{node['nginx']['install_path']}" \
      --extra-configure-flags="#{nginx_configure_flags.join(' ')}"
  EOH
  not_if "#{node['nginx']['install_path']}/sbin/nginx -V 2>&1 | grep passenger"
  notifies :run, resources(:bash => "set dynamic passenger config"), :immediately
end
