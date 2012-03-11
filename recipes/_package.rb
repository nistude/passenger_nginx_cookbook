# Install package

gem_package "passenger" do
  version node['passenger_nginx']['version']
end
