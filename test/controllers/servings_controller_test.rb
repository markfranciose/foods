require 'test_helper'

class ServingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get servings_new_url
    assert_response :success
  end

  test "should get create" do
    get servings_create_url
    assert_response :success
  end

  test "should get edit" do
    get servings_edit_url
    assert_response :success
  end

  test "should get show" do
    get servings_show_url
    assert_response :success
  end

  test "should get index" do
    get servings_index_url
    assert_response :success
  end

end
