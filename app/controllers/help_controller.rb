class HelpController < ApplicationController
	layout "corres"	
	add_breadcrumb "Home", :root_path

	def index
		add_breadcrumb "Help", help_index_path	
	end
end
