class SecondReviewsController < ApplicationController
  before_action :set_second_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :filter_admin!
  before_action :set_second_test
  before_action :set_user

  # GET /second_reviews
  # GET /second_reviews.json
  def index
    @second_reviews = SecondReview.all
  end

  # GET /second_reviews/1
  # GET /second_reviews/1.json
  def show
  end

  # GET /second_reviews/new
  def new
    @second_review = SecondReview.new
  end

  # GET /second_reviews/1/edit
  def edit
  end

  # POST /second_reviews
  # POST /second_reviews.json
  def create
    @second_review = SecondReview.new(second_review_params)
    @second_test.user_id=current_user.id
    @second_review.second_test_id=@second_test.id

    if @second_review.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /second_reviews/1
  # PATCH/PUT /second_reviews/1.json
  def update
    respond_to do |format|
      if @second_review.update(second_review_params)
        format.html { redirect_to @users, notice: 'Second review was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @second_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_reviews/1
  # DELETE /second_reviews/1.json
  def destroy
    @second_review.destroy
    respond_to do |format|
      format.html { redirect_to second_reviews_url, notice: 'Second review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def filter_admin!
 authenticate_user!
 redirect_to root_path, alert: "Lo lamento, no tienes acceso" unless current_user.admin?
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_review
      @second_review = SecondReview.find(params[:id])
    end

    def set_second_test
      @second_test = SecondTest.find(params[:second_test_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_review_params
      params.require(:second_review).permit(:user_id, :second_test_id, :problema1, :cliente1, :alternativa1, :solucion1, :ventajas1)
    end
end
