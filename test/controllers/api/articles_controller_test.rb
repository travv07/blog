require 'test_helper'

class Api::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_articles_index_url
    assert_response :success
  end

  test "should get show" do
    get api_articles_show_url
    assert_response :success
  end

  test "should get new" do
    get api_articles_new_url
    assert_response :success
  end

  test "should get create" do
    get api_articles_create_url
    assert_response :success
  end

  test "should get edit" do
    get api_articles_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_articles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_articles_destroy_url
    assert_response :success
  end

end
