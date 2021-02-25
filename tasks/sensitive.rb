#!/opt/puppetlabs/puppet/bin/ruby
require 'json'
puts({'_sensitive' => 'secret'}.to_json)