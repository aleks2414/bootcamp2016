require 'test_helper'

class SecondReviewsControllerTest < ActionController::TestCase
  setup do
    @second_review = second_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_review" do
    assert_difference('SecondReview.count') do
      post :create, second_review: { alternativa1: @second_review.alternativa1, cliente1: @second_review.cliente1, problema1: @second_review.problema1, second_test_id: @second_review.second_test_id, solucion1: @second_review.solucion1, user_id: @second_review.user_id, ventajas1: @second_review.ventajas1 }
    end

    assert_redirected_to second_review_path(assigns(:second_review))
  end

  test "should show second_review" do
    get :show, id: @second_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_review
    assert_response :success
  end

  test "should update second_review" do
    patch :update, id: @second_review, second_review: { alternativa1: @second_review.alternativa1, cliente1: @second_review.cliente1, problema1: @second_review.problema1, second_test_id: @second_review.second_test_id, solucion1: @second_review.solucion1, user_id: @second_review.user_id, ventajas1: @second_review.ventajas1 }
    assert_redirected_to second_review_path(assigns(:second_review))
  end

  test "should destroy second_review" do
    assert_difference('SecondReview.count', -1) do
      delete :destroy, id: @second_review
    end

    assert_redirected_to second_reviews_path
  end
end
