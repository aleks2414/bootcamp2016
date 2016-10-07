class ThirdReviewsController < ApplicationController
  before_action :set_third_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # before_action :filter_admin!
  before_action :set_third_test
  before_action :set_user

  # GET /third_reviews
  # GET /third_reviews.json
  def index
    @third_reviews = ThirdReview.all
  end

  # GET /third_reviews/1
  # GET /third_reviews/1.json
  def show
  end

  # GET /third_reviews/new
  def new
    @third_review = ThirdReview.new
  end

  # GET /third_reviews/1/edit
  def edit
  end

  # POST /third_reviews
  # POST /third_reviews.json
  def create
    @third_review = ThirdReview.new(third_review_params)
    @third_test.user_id=current_user.id
    @third_review.third_test_id=@third_test.id

    if @third_review.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /third_reviews/1
  # PATCH/PUT /third_reviews/1.json
  def update
    respond_to do |format|
      if @third_review.update(third_review_params)
        format.html { redirect_to @users, notice: 'Third review was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @third_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /third_reviews/1
  # DELETE /third_reviews/1.json
  def destroy
    @third_review.destroy
    respond_to do |format|
      format.html { redirect_to third_reviews_url, notice: 'Third review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_third_review
      @third_review = ThirdReview.find(params[:id])
    end

    def set_third_test
      @third_test = ThirdTest.find(params[:third_test_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def third_review_params
      params.require(:third_review).permit(:user_id, :third_test_id, :info2, :likes1, :aprendizaje1)
    end
end
