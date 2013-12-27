require 'test_helper'

class TextmarqueesControllerTest < ActionController::TestCase
  setup do
    @textmarquee = textmarquees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textmarquees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textmarquee" do
    assert_difference('Textmarquee.count') do
      post :create, textmarquee: { background: @textmarquee.background, color: @textmarquee.color, text: @textmarquee.text }
    end

    assert_redirected_to textmarquee_path(assigns(:textmarquee))
  end

  test "should show textmarquee" do
    get :show, id: @textmarquee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textmarquee
    assert_response :success
  end

  test "should update textmarquee" do
    put :update, id: @textmarquee, textmarquee: { background: @textmarquee.background, color: @textmarquee.color, text: @textmarquee.text }
    assert_redirected_to textmarquee_path(assigns(:textmarquee))
  end

  test "should destroy textmarquee" do
    assert_difference('Textmarquee.count', -1) do
      delete :destroy, id: @textmarquee
    end

    assert_redirected_to textmarquees_path
  end
end
