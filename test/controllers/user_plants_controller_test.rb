require 'test_helper'

class UserPlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_plants_index_url
    assert_response :success
  end

  test "should get show" do
    get user_plants_show_url
    assert_response :success
  end

  test "should get new" do
    get user_plants_new_url
    assert_response :success
  end

  test "should get create" do
    get user_plants_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_plants_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_plants_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_plants_destroy_url
    assert_response :success
  end

end
