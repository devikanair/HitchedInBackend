require 'test_helper'

class MaptolinkedinsControllerTest < ActionController::TestCase
  setup do
    @maptolinkedin = maptolinkedins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maptolinkedins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maptolinkedin" do
    assert_difference('Maptolinkedin.count') do
      post :create, maptolinkedin: { bluetooth: @maptolinkedin.bluetooth, comment: @maptolinkedin.comment, linkedinprofile: @maptolinkedin.linkedinprofile, name: @maptolinkedin.name, picurl: @maptolinkedin.picurl, profiletitle: @maptolinkedin.profiletitle, skills: @maptolinkedin.skills }
    end

    assert_redirected_to maptolinkedin_path(assigns(:maptolinkedin))
  end

  test "should show maptolinkedin" do
    get :show, id: @maptolinkedin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maptolinkedin
    assert_response :success
  end

  test "should update maptolinkedin" do
    put :update, id: @maptolinkedin, maptolinkedin: { bluetooth: @maptolinkedin.bluetooth, comment: @maptolinkedin.comment, linkedinprofile: @maptolinkedin.linkedinprofile, name: @maptolinkedin.name, picurl: @maptolinkedin.picurl, profiletitle: @maptolinkedin.profiletitle, skills: @maptolinkedin.skills }
    assert_redirected_to maptolinkedin_path(assigns(:maptolinkedin))
  end

  test "should destroy maptolinkedin" do
    assert_difference('Maptolinkedin.count', -1) do
      delete :destroy, id: @maptolinkedin
    end

    assert_redirected_to maptolinkedins_path
  end
end
