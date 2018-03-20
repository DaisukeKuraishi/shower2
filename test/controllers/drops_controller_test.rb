require 'test_helper'

class DropsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drops_index_url
    assert_response :success
  end

  test "should get new" do
    get drops_new_url
    assert_response :success
  end

  test "should get create" do
    get drops_create_url
    assert_response :success
  end

  test "should get edit" do
    get drops_edit_url
    assert_response :success
  end

  test "should get update" do
    get drops_update_url
    assert_response :success
  end

  test "should get show" do
    get drops_show_url
    assert_response :success
  end

  test "should get destroy" do
    get drops_destroy_url
    assert_response :success
  end

end
