require 'test_helper'

class JtypesControllerTest < ActionController::TestCase
  setup do
    @jtype = jtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jtype" do
    assert_difference('Jtype.count') do
      post :create, jtype: { name: @jtype.name }
    end

    assert_redirected_to jtype_path(assigns(:jtype))
  end

  test "should show jtype" do
    get :show, id: @jtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jtype
    assert_response :success
  end

  test "should update jtype" do
    patch :update, id: @jtype, jtype: { name: @jtype.name }
    assert_redirected_to jtype_path(assigns(:jtype))
  end

  test "should destroy jtype" do
    assert_difference('Jtype.count', -1) do
      delete :destroy, id: @jtype
    end

    assert_redirected_to jtypes_path
  end
end
