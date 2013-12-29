require 'test_helper'

class CarousalsControllerTest < ActionController::TestCase
  setup do
    @carousal = carousals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carousals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carousal" do
    assert_difference('Carousal.count') do
      post :create, carousal: { image2: @carousal.image2, image3: @carousal.image3, image: @carousal.image }
    end

    assert_redirected_to carousal_path(assigns(:carousal))
  end

  test "should show carousal" do
    get :show, id: @carousal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carousal
    assert_response :success
  end

  test "should update carousal" do
    put :update, id: @carousal, carousal: { image2: @carousal.image2, image3: @carousal.image3, image: @carousal.image }
    assert_redirected_to carousal_path(assigns(:carousal))
  end

  test "should destroy carousal" do
    assert_difference('Carousal.count', -1) do
      delete :destroy, id: @carousal
    end

    assert_redirected_to carousals_path
  end
end
