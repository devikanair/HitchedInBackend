require 'test_helper'

class ChangetypesControllerTest < ActionController::TestCase
  setup do
    @changetype = changetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:changetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create changetype" do
    assert_difference('Changetype.count') do
      post :create, changetype: { random: @changetype.random }
    end

    assert_redirected_to changetype_path(assigns(:changetype))
  end

  test "should show changetype" do
    get :show, id: @changetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @changetype
    assert_response :success
  end

  test "should update changetype" do
    put :update, id: @changetype, changetype: { random: @changetype.random }
    assert_redirected_to changetype_path(assigns(:changetype))
  end

  test "should destroy changetype" do
    assert_difference('Changetype.count', -1) do
      delete :destroy, id: @changetype
    end

    assert_redirected_to changetypes_path
  end
end
