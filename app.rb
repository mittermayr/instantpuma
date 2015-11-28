require 'sinatra'
require 'mysql2'
require 'connection_pool'

require_relative 'database'

class Pumatra < Sinatra::Base

	$database = ConnectionPool.new(size: 5, timeout: 15) {
	  Mysql2::Client.new(:host => "127.0.0.1", :database => "", :username => "", :password => "", :reconnect => true)
	}
	
end

require_relative 'endpoints/index.rb'
 
Pumatra.run! if __FILE__ == $0