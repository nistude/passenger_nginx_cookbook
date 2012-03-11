# Install passenger for nginx

include_recipe "nginx::source"

include_recipe "passenger_nginx::_dependencies"
include_recipe "passenger_nginx::_package"
include_recipe "passenger_nginx::_setup_module"
include_recipe "passenger_nginx::_config"
