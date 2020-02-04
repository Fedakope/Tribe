require 'test_helper'

class IndiensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get indiens_index_url
    assert_response :success
  end

  test "should get show" do
    get indiens_show_url
    assert_response :success
  end

  test "should get new" do
    get indiens_new_url
    assert_response :success
  end

  test "should get edit" do
    get indiens_edit_url
    assert_response :success
  end

end
