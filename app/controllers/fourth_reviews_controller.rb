class FourthReviewsController < ApplicationController
  before_action :set_fourth_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :filter_admin!
  before_action :set_fourth_test
  before_action :set_user

  # GET /fourth_reviews
  # GET /fourth_reviews.json
  def index
    @fourth_reviews = FourthReview.all
  end

  # GET /fourth_reviews/1
  # GET /fourth_reviews/1.json
  def show
  end

  # GET /fourth_reviews/new
  def new
    @fourth_review = FourthReview.new
  end

  # GET /fourth_reviews/1/edit
  def edit
  end

  # POST /fourth_reviews
  # POST /fourth_reviews.json
  def create
    @fourth_review = FourthReview.new(fourth_review_params)
    @fourth_test.user_id=current_user.id
    @fourth_review.fourth_test_id=@fourth_test.id

    if @fourth_review.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /fourth_reviews/1
  # PATCH/PUT /fourth_reviews/1.json
  def update
    respond_to do |format|
      if @fourth_review.update(fourth_review_params)
        format.html { redirect_to @users, notice: 'Fourth review was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @fourth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourth_reviews/1
  # DELETE /fourth_reviews/1.json
  def destroy
    @fourth_review.destroy
    respond_to do |format|
      format.html { redirect_to fourth_reviews_url, notice: 'Fourth review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def filter_admin!
 authenticate_user!
 redirect_to root_path, alert: "Lo lamento, no tienes acceso" unless current_user.admin?
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourth_review
      @fourth_review = FourthReview.find(params[:id])
    end

    def set_fourth_test
      @fourth_test = FourthTest.find(params[:fourth_test_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourth_review_params
      params.require(:fourth_review).permit(:user_id, :fourth_test_id, :video, :likes2, :aprendizaje2)
    end
end
