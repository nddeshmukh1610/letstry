require 'test_helper'

class JapprovalsControllerTest < ActionController::TestCase
  setup do
    @japproval = japprovals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:japprovals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create japproval" do
    assert_difference('Japproval.count') do
      post :create, japproval: { name: @japproval.name }
    end

    assert_redirected_to japproval_path(assigns(:japproval))
  end

  test "should show japproval" do
    get :show, id: @japproval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @japproval
    assert_response :success
  end

  test "should update japproval" do
    patch :update, id: @japproval, japproval: { name: @japproval.name }
    assert_redirected_to japproval_path(assigns(:japproval))
  end

  test "should destroy japproval" do
    assert_difference('Japproval.count', -1) do
      delete :destroy, id: @japproval
    end

    assert_redirected_to japprovals_path
  end
end
