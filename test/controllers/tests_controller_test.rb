require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

end
