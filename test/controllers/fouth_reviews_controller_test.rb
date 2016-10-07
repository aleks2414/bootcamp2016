require 'test_helper'

class FouthReviewsControllerTest < ActionController::TestCase
  setup do
    @fouth_review = fouth_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fouth_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fouth_review" do
    assert_difference('FouthReview.count') do
      post :create, fouth_review: { aprendizaje2: @fouth_review.aprendizaje2, fourth_test_id: @fouth_review.fourth_test_id, likes2: @fouth_review.likes2, user_id: @fouth_review.user_id, video: @fouth_review.video }
    end

    assert_redirected_to fouth_review_path(assigns(:fouth_review))
  end

  test "should show fouth_review" do
    get :show, id: @fouth_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fouth_review
    assert_response :success
  end

  test "should update fouth_review" do
    patch :update, id: @fouth_review, fouth_review: { aprendizaje2: @fouth_review.aprendizaje2, fourth_test_id: @fouth_review.fourth_test_id, likes2: @fouth_review.likes2, user_id: @fouth_review.user_id, video: @fouth_review.video }
    assert_redirected_to fouth_review_path(assigns(:fouth_review))
  end

  test "should destroy fouth_review" do
    assert_difference('FouthReview.count', -1) do
      delete :destroy, id: @fouth_review
    end

    assert_redirected_to fouth_reviews_path
  end
end
