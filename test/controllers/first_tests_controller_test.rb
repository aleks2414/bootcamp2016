require 'test_helper'

class FirstTestsControllerTest < ActionController::TestCase
  setup do
    @first_test = first_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_test" do
    assert_difference('FirstTest.count') do
      post :create, first_test: { info1: @first_test.info1, user_id: @first_test.user_id }
    end

    assert_redirected_to first_test_path(assigns(:first_test))
  end

  test "should show first_test" do
    get :show, id: @first_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_test
    assert_response :success
  end

  test "should update first_test" do
    patch :update, id: @first_test, first_test: { info1: @first_test.info1, user_id: @first_test.user_id }
    assert_redirected_to first_test_path(assigns(:first_test))
  end

  test "should destroy first_test" do
    assert_difference('FirstTest.count', -1) do
      delete :destroy, id: @first_test
    end

    assert_redirected_to first_tests_path
  end
end
