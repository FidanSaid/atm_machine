require 'test_helper'

class UserInfomsControllerTest < ActionController::TestCase
  setup do
    @user_infom = user_infoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_infoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_infom" do
    assert_difference('UserInfom.count') do
      post :create, user_infom: { address: @user_infom.address, email: @user_infom.email, name: @user_infom.name, phone_number: @user_infom.phone_number }
    end

    assert_redirected_to user_infom_path(assigns(:user_infom))
  end

  test "should show user_infom" do
    get :show, id: @user_infom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_infom
    assert_response :success
  end

  test "should update user_infom" do
    patch :update, id: @user_infom, user_infom: { address: @user_infom.address, email: @user_infom.email, name: @user_infom.name, phone_number: @user_infom.phone_number }
    assert_redirected_to user_infom_path(assigns(:user_infom))
  end

  test "should destroy user_infom" do
    assert_difference('UserInfom.count', -1) do
      delete :destroy, id: @user_infom
    end

    assert_redirected_to user_infoms_path
  end
end
