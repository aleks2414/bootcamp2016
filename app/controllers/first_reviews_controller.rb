class FirstReviewsController < ApplicationController
  before_action :set_first_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :filter_admin!
  before_action :set_first_test
  before_action :set_user

  # GET /first_reviews
  # GET /first_reviews.json
  def index
    @first_reviews = FirstReview.all
  end

  # GET /first_reviews/1
  # GET /first_reviews/1.json
  def show
  end

  # GET /first_reviews/new
  def new
    @first_review = FirstReview.new
  end

  # GET /first_reviews/1/edit
  def edit
  end

  # POST /first_reviews
  # POST /first_reviews.json
  def create
    @first_review = FirstReview.new(first_review_params)
    @first_test.user_id=current_user.id
    @first_review.first_test_id=@first_test.id

    if @first_review.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /first_reviews/1
  # PATCH/PUT /first_reviews/1.json
  def update
    respond_to do |format|
      if @first_review.update(first_review_params)
        format.html { redirect_to @users, notice: 'First review was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @first_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_reviews/1
  # DELETE /first_reviews/1.json
  def destroy
    @first_review.destroy
    respond_to do |format|
      format.html { redirect_to first_reviews_url, notice: 'First review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def filter_admin!
 authenticate_user!
 redirect_to root_path, alert: "Lo lamento, no tienes acceso" unless current_user.admin?
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_review
      @first_review = FirstReview.find(params[:id])
    end

    def set_first_test
      @first_test = FirstTest.find(params[:first_test_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_review_params
      params.require(:first_review).permit(:user_id, :first_test_id, :info1)
    end
end
