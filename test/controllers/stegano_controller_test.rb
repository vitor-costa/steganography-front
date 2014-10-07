require 'test_helper'

class SteganoControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "index" do
  	get :index
  	assert_response :success
  	assert_template :home_page
  end

  test "download template" do
  	get :download_tmpl
  	assert_response :success
  	assert_template :download_tmpl
  end

  test "donwload file" do
  	get :download
  	assert_equal("application/text", response.content_type)
  end

  test "download article" do
  	get :show_article
  	assert_equal("application/pdf", response.content_type)
  end
end
