require 'test_helper'

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get grades_show_url
    assert_response :success
  end

  test "should get new" do
    get grades_new_url
    assert_response :success
  end

  test "should get edit" do
    get grades_edit_url
    assert_response :success
  end

end
