require 'test_helper'

class RecruiterfiltersControllerTest < ActionController::TestCase
  setup do
    @recruiterfilter = recruiterfilters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruiterfilters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recruiterfilter" do
    assert_difference('Recruiterfilter.count') do
      post :create, recruiterfilter: {  }
    end

    assert_redirected_to recruiterfilter_path(assigns(:recruiterfilter))
  end

  test "should show recruiterfilter" do
    get :show, id: @recruiterfilter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recruiterfilter
    assert_response :success
  end

  test "should update recruiterfilter" do
    put :update, id: @recruiterfilter, recruiterfilter: {  }
    assert_redirected_to recruiterfilter_path(assigns(:recruiterfilter))
  end

  test "should destroy recruiterfilter" do
    assert_difference('Recruiterfilter.count', -1) do
      delete :destroy, id: @recruiterfilter
    end

    assert_redirected_to recruiterfilters_path
  end
end
