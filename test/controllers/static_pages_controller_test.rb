require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # test "should get home" do
  #   get root_path
  #   assert_response :success
  #   assert_select "title", "Ruby on Rails Tutorial Sample App"
  # end

  test "should get home" do
    #get static_pages_home_url 
    #root 'static_pages#home' #rootingに伴い書き換え
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    #get static_pages_help_url
    get help_path #rootingに伴い書き換え
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    #get static_pages_about_url
    get about_path #rootingに伴い書き換え
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do #テストファイルごとに書き換え必要
    #get static_pages_contact_url
    get contact_path #rootingに伴い書き換え
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end
