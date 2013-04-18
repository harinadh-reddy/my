require 'test_helper'

class HarisControllerTest < ActionController::TestCase
  setup do
    @hari = haris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hari" do
    assert_difference('Hari.count') do
      post :create, hari: { name: @hari.name }
    end

    assert_redirected_to hari_path(assigns(:hari))
  end

  test "should show hari" do
    get :show, id: @hari
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hari
    assert_response :success
  end

  test "should update hari" do
    put :update, id: @hari, hari: { name: @hari.name }
    assert_redirected_to hari_path(assigns(:hari))
  end

  test "should destroy hari" do
    assert_difference('Hari.count', -1) do
      delete :destroy, id: @hari
    end

    assert_redirected_to haris_path
  end
end
