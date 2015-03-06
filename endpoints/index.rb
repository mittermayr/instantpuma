# encoding: utf-8
class Pumatra < Sinatra::Base
	
	# Notes to self:
	# ==============
	# No layout? Use erb :file, :layout => false
	# Specific layout? Use erb :file, :layout => :other_layout_file
	#
	
	enable :sessions
	
	get "/" do
		#erb :welcome, :layout => false
		
		@username = Database::Users.get_by_id(1)
		
		erb :welcome
	end
  
end