require 'test_helper'

class TakesControllerTest < ActionController::TestCase
  setup do
    @take = takes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:takes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create take" do
    assert_difference('Take.count') do
      post :create, take: { class: @take.class, teacher: @take.teacher }
    end

    assert_redirected_to take_path(assigns(:take))
  end

  test "should show take" do
    get :show, id: @take
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @take
    assert_response :success
  end

  test "should update take" do
    patch :update, id: @take, take: { class: @take.class, teacher: @take.teacher }
    assert_redirected_to take_path(assigns(:take))
  end

  test "should destroy take" do
    assert_difference('Take.count', -1) do
      delete :destroy, id: @take
    end

    assert_redirected_to takes_path
  end
end
