class SteganoController < ApplicationController

	def index 
		render 'home_page'
	end

	def download_tmpl
		render 'download_tmpl'
	end

	def download
		send_file( "#{Rails.root}/public/hello.txt",
    :filename => "hello",
    :type => "application/text")
	end
end
