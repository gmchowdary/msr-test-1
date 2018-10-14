#
# Cookbook:: MSR-Test-Instance-1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


execute("Update System") do
	command "apt update && apt-get install software-properties-common -y && hostname MSR-test-instance"
	retries 2
	retry_delay 2
	ignore_failure true
end

# execute("Install NVM") do
# 	cwd "/tmp"
# 	command "curl https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash"
# 	retries 2
# 	retry_delay 2
# 	ignore_failure true
# end

# execute("Install NVM") do
# 	cwd "/tmp"
# 	command "source /root/.profile"
# 	retries 2
# 	retry_delay 2
# 	ignore_failure
# end

execute("Install NVM") do
	cwd "/tmp"
	command "curl https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash && \
	source ~/.profile"
	retries 2
	retry_delay 2
	ignore_failure true
end

execute("Install NPM") do
	cwd "/tmp"
	command "curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \ 
	apt-get install -y nodejs"
	retries 2
	retry_delay 2
	ignore_failure true
end

execute("Install docker CE") do
	cwd "/tmp"
	command "wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/edge/amd64/docker-ce_18.06.1~ce~3-0~ubuntu_amd64.deb && \
	dpkg -i docker-ce_18.06.1~ce~3-0~ubuntu_amd64.deb"
	retries 2
	retry_delay 2
	ignore_failure true
end

execute("force install docker") do
	cwd "/tmp"
	command "apt-get -yf install"
	retries 2
	retry_delay 2
	ignore_failure true
end

execute("Install docker-compose") do
	cwd "/tmp"
	command "apt install docker-compose -y"
	retries 2
	retry_delay 2
	ignore_failure true
end

execute("Install OpenSSL") do
	cwd "/tmp"
	command "apt install openssl -y && \
	apt-get install libssl-dev -y"
	retries 2
	retry_delay 2
	ignore_failure true
end


execute("force install docker") do
	cwd "/tmp"
	command "apt-get -yf install"
	retries 2
	retry_delay 2
	ignore_failure true
end

execute("Install docker-compose") do
	cwd "/tmp"
	command "
 	apt-add-repository ppa:git-core/ppa -y &&\
 	apt-get update && \
	apt-get install git -y"
	retries 2
	retry_delay 2
	ignore_failure true
end

# bash 'extract_module' do
#   user 'root'
#   cwd "/tmp"
#   code <<-EOH
#     apt update
#     apt-get install software-properties-common -y
#     sudo hostname MSR-test-instance

#     #install nvm
#     curl https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
#     source ~/.profile
    
#     #install npm
# 	# wget https://nodejs.org/dist/v8.12.0/node-v8.12.0.tar.gz
# 	# tar xvfz node-v8.12.0.tar.gz
# 	# mkdir -p /usr/local/nodejs
# 	# mv node-v8.12.0/* /usr/local/nodejs
# 	# echo "export PATH=$PATH:/usr/local/nodejs/bin" >> .bashrc
# 	curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
# 	apt-get install -y nodejs

# 	#install latest docker CE patch
# 	wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/edge/amd64/docker-ce_18.06.1~ce~3-0~ubuntu_amd64.deb
# 	dpkg -i docker-ce_18.06.1~ce~3-0~ubuntu_amd64.deb
# 	apt-get -yf install

# 	#install 1.8.0
# 	apt install docker-compose -y

# 	#install open SSL
# 	apt install openssl -y
# 	apt-get install libssl-dev -y

# 	#Install GIT
# 	apt-add-repository ppa:git-core/ppa -y
# 	apt-get update
# 	apt-get install git -y
#   EOH
# end