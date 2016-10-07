require 'test_helper'

class FirstReviewsControllerTest < ActionController::TestCase
  setup do
    @first_review = first_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_review" do
    assert_difference('FirstReview.count') do
      post :create, first_review: { first_test_id: @first_review.first_test_id, info1: @first_review.info1, user_id: @first_review.user_id }
    end

    assert_redirected_to first_review_path(assigns(:first_review))
  end

  test "should show first_review" do
    get :show, id: @first_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_review
    assert_response :success
  end

  test "should update first_review" do
    patch :update, id: @first_review, first_review: { first_test_id: @first_review.first_test_id, info1: @first_review.info1, user_id: @first_review.user_id }
    assert_redirected_to first_review_path(assigns(:first_review))
  end

  test "should destroy first_review" do
    assert_difference('FirstReview.count', -1) do
      delete :destroy, id: @first_review
    end

    assert_redirected_to first_reviews_path
  end
end
