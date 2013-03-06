require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

	test "that /login routes opens login page" do
		get '/login'
		assert_response :success
	end

	test "that /logout routes opens logout page" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /register routes opens register page" do
		get '/register'
		assert_response :success
	end

end
