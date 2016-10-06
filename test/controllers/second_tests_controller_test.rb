require 'test_helper'

class SecondTestsControllerTest < ActionController::TestCase
  setup do
    @second_test = second_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_test" do
    assert_difference('SecondTest.count') do
      post :create, second_test: { boceto: @second_test.boceto, user_id: @second_test.user_id }
    end

    assert_redirected_to second_test_path(assigns(:second_test))
  end

  test "should show second_test" do
    get :show, id: @second_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_test
    assert_response :success
  end

  test "should update second_test" do
    patch :update, id: @second_test, second_test: { boceto: @second_test.boceto, user_id: @second_test.user_id }
    assert_redirected_to second_test_path(assigns(:second_test))
  end

  test "should destroy second_test" do
    assert_difference('SecondTest.count', -1) do
      delete :destroy, id: @second_test
    end

    assert_redirected_to second_tests_path
  end
end
