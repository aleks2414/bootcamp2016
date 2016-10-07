class SixthReviewsController < ApplicationController
  before_action :set_sixth_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # before_action :filter_admin!
  before_action :set_fourth_test
  before_action :set_user

  # GET /sixth_reviews
  # GET /sixth_reviews.json
  def index
    @sixth_reviews = SixthReview.all
  end

  # GET /sixth_reviews/1
  # GET /sixth_reviews/1.json
  def show
  end

  # GET /sixth_reviews/new
  def new
    @sixth_review = SixthReview.new
  end

  # GET /sixth_reviews/1/edit
  def edit
  end

  # POST /sixth_reviews
  # POST /sixth_reviews.json
  def create
    @sixth_review = SixthReview.new(sixth_review_params)
    @fourth_test.user_id=current_user.id
    @sixth_review.fourth_test_id=@fourth_test.id

    if @sixth_review.save
      redirect_to user_path(@user)
    else
      render 'new'
    end

  end

  # PATCH/PUT /sixth_reviews/1
  # PATCH/PUT /sixth_reviews/1.json
  def update
    respond_to do |format|
      if @sixth_review.update(sixth_review_params)
        format.html { redirect_to @users, notice: 'Sixth review was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @sixth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sixth_reviews/1
  # DELETE /sixth_reviews/1.json
  def destroy
    @sixth_review.destroy
    respond_to do |format|
      format.html { redirect_to sixth_reviews_url, notice: 'Sixth review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sixth_review
      @sixth_review = SixthReview.find(params[:id])
    end

    def set_fourth_test
      @fourth_test = FourthTest.find(params[:fourth_test_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sixth_review_params
      params.require(:sixth_review).permit(:user_id, :fourth_test_id, :problem3, :cliente3, :propuesta3, :ventajas3, :monetizacion3, :comunicacion3)
    end
end
