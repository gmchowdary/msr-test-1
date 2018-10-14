directory '/root/msr-test-instance' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/root/msr-test-instance/Dockerfile' do
  source 'msr-test-instance-1/Dockerfile'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/root/msr-test-instance/docker-compose.yml' do
  source 'msr-test-instance-1/docker-compose.yml'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/root/msr-test-instance/000-default.conf' do
  source 'msr-test-instance-1/000-default.conf'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/root/msr-test-instance/start-msr-1.sh' do
  source 'msr-test-instance-1/start-msr-1.sh'
  owner 'root'
  group 'root'
  mode '0755'
end

execute("start apache2") do
  cwd "/root/msr-test-instance"
  command "./start-msr-1.sh"
  retries 2
  retry_delay 2
end
