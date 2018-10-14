directory '/root/msr-test-instance' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/root/msr-test-instance/Dockerfile' do
  source 'msr-test-instance-2/Dockerfile'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/root/msr-test-instance/docker-compose.yml' do
  source 'msr-test-instance-2/docker-compose.yml'
  owner 'root'
  group 'root'
  mode '0755'
end

template '/root/msr-test-instance/start-msr-2.sh' do
  source 'msr-test-instance-2/start-msr-2.sh'
  owner 'root'
  group 'root'
  mode '0755'
end


execute("start couchdb") do
  cwd "/root/msr-test-instance"
  command "./start-msr-2.sh"
  retries 2
  retry_delay 2
end
