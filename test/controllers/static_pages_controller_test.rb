require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
  	get home_url
  	assert_response :success
  	assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
  test "should get help" do
  	get help_path
  	assert_response :success
    assert_select "title", full_title("Help")
  end
  test "should get about" do
  	get about_url
  	assert_response :success
    assert_select "title", full_title("About")
  end
  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
  test "should get signup" do
    get signup_url
    assert_response :success
    assert_select "title", "Sign up | Ruby on Rails Tutorial Sample App"
  end

end
