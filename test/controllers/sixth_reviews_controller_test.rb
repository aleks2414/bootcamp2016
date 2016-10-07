require 'test_helper'

class SixthReviewsControllerTest < ActionController::TestCase
  setup do
    @sixth_review = sixth_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixth_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sixth_review" do
    assert_difference('SixthReview.count') do
      post :create, sixth_review: { cliente3: @sixth_review.cliente3, comunicacion3: @sixth_review.comunicacion3, fourth_test_id: @sixth_review.fourth_test_id, monetizacion3: @sixth_review.monetizacion3, problem3: @sixth_review.problem3, propuesta3: @sixth_review.propuesta3, user_id: @sixth_review.user_id, ventajas3: @sixth_review.ventajas3 }
    end

    assert_redirected_to sixth_review_path(assigns(:sixth_review))
  end

  test "should show sixth_review" do
    get :show, id: @sixth_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sixth_review
    assert_response :success
  end

  test "should update sixth_review" do
    patch :update, id: @sixth_review, sixth_review: { cliente3: @sixth_review.cliente3, comunicacion3: @sixth_review.comunicacion3, fourth_test_id: @sixth_review.fourth_test_id, monetizacion3: @sixth_review.monetizacion3, problem3: @sixth_review.problem3, propuesta3: @sixth_review.propuesta3, user_id: @sixth_review.user_id, ventajas3: @sixth_review.ventajas3 }
    assert_redirected_to sixth_review_path(assigns(:sixth_review))
  end

  test "should destroy sixth_review" do
    assert_difference('SixthReview.count', -1) do
      delete :destroy, id: @sixth_review
    end

    assert_redirected_to sixth_reviews_path
  end
end
