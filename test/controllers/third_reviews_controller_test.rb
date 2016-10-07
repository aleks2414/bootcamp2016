require 'test_helper'

class ThirdReviewsControllerTest < ActionController::TestCase
  setup do
    @third_review = third_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:third_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create third_review" do
    assert_difference('ThirdReview.count') do
      post :create, third_review: { aprendizaje1: @third_review.aprendizaje1, info2: @third_review.info2, likes1: @third_review.likes1, third_test_id: @third_review.third_test_id, user_id: @third_review.user_id }
    end

    assert_redirected_to third_review_path(assigns(:third_review))
  end

  test "should show third_review" do
    get :show, id: @third_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @third_review
    assert_response :success
  end

  test "should update third_review" do
    patch :update, id: @third_review, third_review: { aprendizaje1: @third_review.aprendizaje1, info2: @third_review.info2, likes1: @third_review.likes1, third_test_id: @third_review.third_test_id, user_id: @third_review.user_id }
    assert_redirected_to third_review_path(assigns(:third_review))
  end

  test "should destroy third_review" do
    assert_difference('ThirdReview.count', -1) do
      delete :destroy, id: @third_review
    end

    assert_redirected_to third_reviews_path
  end
end
