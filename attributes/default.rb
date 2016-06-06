#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
  when "smartos", "rhel", "debian", "fedora"
    default['nodejs']['install_method'] = 'package'
  else
    default['nodejs']['install_method'] = 'source'
end

default['nodejs']['version'] = '4.4.5'
default['nodejs']['checksum'] = '15d57c4a3696df8d5ef1bba452d38e5d27fc3c963760eeb218533c48381e89d5'
default['nodejs']['checksum_linux_x64'] = '15d57c4a3696df8d5ef1bba452d38e5d27fc3c963760eeb218533c48381e89d5'
default['nodejs']['checksum_linux_x86'] = '447b17542981c20f6792a20c31eb946c786e2cbd3bd1459f85c2cd0eb400e009'
default['nodejs']['dir'] = '/usr/local'
default['nodejs']['npm'] = '1.4.4'
default['nodejs']['src_url'] = "http://nodejs.org/dist"
default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2
default['nodejs']['check_sha'] = true

# Set this to true to install the legacy packages (0.8.x) from ubuntu/debian repositories; default is false (using the latest stable 0.10.x)
default['nodejs']['legacy_packages'] = false
