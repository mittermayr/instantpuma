# encoding: utf-8
class Pumatra < Sinatra::Base
		
	enable :sessions
	
	get "/" do
		erb :welcome
	end
  
end