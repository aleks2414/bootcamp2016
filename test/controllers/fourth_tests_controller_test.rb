require 'test_helper'

class FourthTestsControllerTest < ActionController::TestCase
  setup do
    @fourth_test = fourth_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fourth_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fourth_test" do
    assert_difference('FourthTest.count') do
      post :create, fourth_test: { aprendizajes2: @fourth_test.aprendizajes2, likes2: @fourth_test.likes2, user_id: @fourth_test.user_id, video: @fourth_test.video }
    end

    assert_redirected_to fourth_test_path(assigns(:fourth_test))
  end

  test "should show fourth_test" do
    get :show, id: @fourth_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fourth_test
    assert_response :success
  end

  test "should update fourth_test" do
    patch :update, id: @fourth_test, fourth_test: { aprendizajes2: @fourth_test.aprendizajes2, likes2: @fourth_test.likes2, user_id: @fourth_test.user_id, video: @fourth_test.video }
    assert_redirected_to fourth_test_path(assigns(:fourth_test))
  end

  test "should destroy fourth_test" do
    assert_difference('FourthTest.count', -1) do
      delete :destroy, id: @fourth_test
    end

    assert_redirected_to fourth_tests_path
  end
end
