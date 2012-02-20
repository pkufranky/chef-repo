# if we are configuring a shard as a replicaset we do nothing in this recipe
mongodb_instance "mongodb2" do
	mongodb_type "mongod"
	port         node['mongodb2']['port']
	logpath      node['mongodb2']['logpath']
	dbpath       node['mongodb2']['dbpath']
	replicaset   node
end
