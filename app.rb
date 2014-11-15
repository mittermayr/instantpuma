require 'sinatra'

class Pumatra < Sinatra::Base

end

require_relative 'endpoints/index.rb'
 
Pumatra.run! if __FILE__ == $0