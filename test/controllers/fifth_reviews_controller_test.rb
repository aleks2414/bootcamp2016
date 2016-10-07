require 'test_helper'

class FifthReviewsControllerTest < ActionController::TestCase
  setup do
    @fifth_review = fifth_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fifth_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fifth_review" do
    assert_difference('FifthReview.count') do
      post :create, fifth_review: { cliente2: @fifth_review.cliente2, comunicacion2: @fifth_review.comunicacion2, fourth_test_id: @fifth_review.fourth_test_id, monetizacion2: @fifth_review.monetizacion2, problem2: @fifth_review.problem2, propuesta2: @fifth_review.propuesta2, user_id: @fifth_review.user_id, ventajas2: @fifth_review.ventajas2 }
    end

    assert_redirected_to fifth_review_path(assigns(:fifth_review))
  end

  test "should show fifth_review" do
    get :show, id: @fifth_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fifth_review
    assert_response :success
  end

  test "should update fifth_review" do
    patch :update, id: @fifth_review, fifth_review: { cliente2: @fifth_review.cliente2, comunicacion2: @fifth_review.comunicacion2, fourth_test_id: @fifth_review.fourth_test_id, monetizacion2: @fifth_review.monetizacion2, problem2: @fifth_review.problem2, propuesta2: @fifth_review.propuesta2, user_id: @fifth_review.user_id, ventajas2: @fifth_review.ventajas2 }
    assert_redirected_to fifth_review_path(assigns(:fifth_review))
  end

  test "should destroy fifth_review" do
    assert_difference('FifthReview.count', -1) do
      delete :destroy, id: @fifth_review
    end

    assert_redirected_to fifth_reviews_path
  end
end
