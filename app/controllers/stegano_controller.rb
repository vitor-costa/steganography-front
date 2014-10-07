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

	def show_article
	  pdf_filename = File.join(Rails.root, "public/crypto-steganography.pdf")
	  send_file(pdf_filename, :filename => "crypto-steganography.pdf", :type => "application/pdf")
	end
end
