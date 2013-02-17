require 'test_helper'

class GenerateWikiControllerTest < ActionController::TestCase
  test "should get form" do
    get :form
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

end
