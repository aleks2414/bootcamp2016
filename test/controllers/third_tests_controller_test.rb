require 'test_helper'

class ThirdTestsControllerTest < ActionController::TestCase
  setup do
    @third_test = third_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:third_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create third_test" do
    assert_difference('ThirdTest.count') do
      post :create, third_test: { aprendizajes1: @third_test.aprendizajes1, info2: @third_test.info2, likes1: @third_test.likes1, string: @third_test.string, user_id: @third_test.user_id }
    end

    assert_redirected_to third_test_path(assigns(:third_test))
  end

  test "should show third_test" do
    get :show, id: @third_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @third_test
    assert_response :success
  end

  test "should update third_test" do
    patch :update, id: @third_test, third_test: { aprendizajes1: @third_test.aprendizajes1, info2: @third_test.info2, likes1: @third_test.likes1, string: @third_test.string, user_id: @third_test.user_id }
    assert_redirected_to third_test_path(assigns(:third_test))
  end

  test "should destroy third_test" do
    assert_difference('ThirdTest.count', -1) do
      delete :destroy, id: @third_test
    end

    assert_redirected_to third_tests_path
  end
end
