require 'test_helper'

class AlumnisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alumnis_index_url
    assert_response :success
  end

  test "should get show" do
    get alumnis_show_url
    assert_response :success
  end

  test "should get new" do
    get alumnis_new_url
    assert_response :success
  end

  test "should get edit" do
    get alumnis_edit_url
    assert_response :success
  end

  test "should get delete" do
    get alumnis_delete_url
    assert_response :success
  end

end
