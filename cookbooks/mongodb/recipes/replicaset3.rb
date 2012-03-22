# if we are configuring a shard as a replicaset we do nothing in this recipe
mongodb_instance "mongodb3" do
	mongodb_type "mongod"
	port         node['mongodb3']['port']
	logpath      node['mongodb3']['logpath']
	dbpath       node['mongodb3']['dbpath']
	replicaset   node
end
