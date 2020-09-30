require 'test_helper'

class UsrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usr_index_url
    assert_response :success
  end

  test "should get show" do
    get usr_show_url
    assert_response :success
  end

  test "should get new" do
    get usr_new_url
    assert_response :success
  end

  test "should get edit" do
    get usr_edit_url
    assert_response :success
  end

  test "should get delete" do
    get usr_delete_url
    assert_response :success
  end

end
