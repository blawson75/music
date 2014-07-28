require 'test_helper'

class MuziksControllerTest < ActionController::TestCase
  setup do
    @muzik = muziks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muziks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muzik" do
    assert_difference('Muzik.count') do
      post :create, muzik: { format: @muzik.format, length_min: @muzik.length_min, length_sec: @muzik.length_sec, name: @muzik.name, size: @muzik.size }
    end

    assert_redirected_to muzik_path(assigns(:muzik))
  end

  test "should show muzik" do
    get :show, id: @muzik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muzik
    assert_response :success
  end

  test "should update muzik" do
    patch :update, id: @muzik, muzik: { format: @muzik.format, length_min: @muzik.length_min, length_sec: @muzik.length_sec, name: @muzik.name, size: @muzik.size }
    assert_redirected_to muzik_path(assigns(:muzik))
  end

  test "should destroy muzik" do
    assert_difference('Muzik.count', -1) do
      delete :destroy, id: @muzik
    end

    assert_redirected_to muziks_path
  end
end
