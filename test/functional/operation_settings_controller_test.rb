require 'test_helper'

class OperationSettingsControllerTest < ActionController::TestCase
  setup do
    @operation_setting = operation_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operation_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operation_setting" do
    assert_difference('OperationSetting.count') do
      post :create, operation_setting: { display: @operation_setting.display, identifier: @operation_setting.identifier, value: @operation_setting.value }
    end

    assert_redirected_to operation_setting_path(assigns(:operation_setting))
  end

  test "should show operation_setting" do
    get :show, id: @operation_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operation_setting
    assert_response :success
  end

  test "should update operation_setting" do
    put :update, id: @operation_setting, operation_setting: { display: @operation_setting.display, identifier: @operation_setting.identifier, value: @operation_setting.value }
    assert_redirected_to operation_setting_path(assigns(:operation_setting))
  end

  test "should destroy operation_setting" do
    assert_difference('OperationSetting.count', -1) do
      delete :destroy, id: @operation_setting
    end

    assert_redirected_to operation_settings_path
  end
end
