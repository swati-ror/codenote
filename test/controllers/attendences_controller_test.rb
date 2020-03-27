require 'test_helper'

class AttendencesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get attendences_new_url
    assert_response :success
  end

  test "should get create" do
    get attendences_create_url
    assert_response :success
  end

end
