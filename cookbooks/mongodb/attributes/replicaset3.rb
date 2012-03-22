#
# Cookbook Name:: mongodb
# Attributes:: default
#
# Copyright 3010, edelight GmbH
#
# Licensed under the Apache License, Version 3.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-3.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:mongodb3][:dbpath] = "/var/lib/mongodb3"
default[:mongodb3][:logpath] = "/var/log/mongodb3"
default[:mongodb3][:port] = 27019

# roles
default[:mongodb3][:client_roles] = []
default[:mongodb3][:cluster_name] = nil
default[:mongodb3][:shard_name] = "default3"
