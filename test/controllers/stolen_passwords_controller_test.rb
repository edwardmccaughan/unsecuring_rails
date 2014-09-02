require 'test_helper'

class StolenPasswordsControllerTest < ActionController::TestCase
  setup do
    @stolen_password = stolen_passwords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stolen_passwords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stolen_password" do
    assert_difference('StolenPassword.count') do
      post :create, stolen_password: {  }
    end

    assert_redirected_to stolen_password_path(assigns(:stolen_password))
  end

  test "should show stolen_password" do
    get :show, id: @stolen_password
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stolen_password
    assert_response :success
  end

  test "should update stolen_password" do
    patch :update, id: @stolen_password, stolen_password: {  }
    assert_redirected_to stolen_password_path(assigns(:stolen_password))
  end

  test "should destroy stolen_password" do
    assert_difference('StolenPassword.count', -1) do
      delete :destroy, id: @stolen_password
    end

    assert_redirected_to stolen_passwords_path
  end
end
