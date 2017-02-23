hostname = node['hostname']
file '/etc/mod' do
	content "Hostname is this: #{hostname}"
end
