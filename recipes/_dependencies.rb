# Install required dependencies

['curl', 'libcurl4-openssl-dev','libpcre3-dev'].each do |pkg|
  package pkg
end
