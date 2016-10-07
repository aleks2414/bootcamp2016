class FouthReviewsController < ApplicationController
  before_action :set_fouth_review, only: [:show, :edit, :update, :destroy]

  # GET /fouth_reviews
  # GET /fouth_reviews.json
  def index
    @fouth_reviews = FouthReview.all
  end

  # GET /fouth_reviews/1
  # GET /fouth_reviews/1.json
  def show
  end

  # GET /fouth_reviews/new
  def new
    @fouth_review = FouthReview.new
  end

  # GET /fouth_reviews/1/edit
  def edit
  end

  # POST /fouth_reviews
  # POST /fouth_reviews.json
  def create
    @fouth_review = FouthReview.new(fouth_review_params)

    respond_to do |format|
      if @fouth_review.save
        format.html { redirect_to @fouth_review, notice: 'Fouth review was successfully created.' }
        format.json { render :show, status: :created, location: @fouth_review }
      else
        format.html { render :new }
        format.json { render json: @fouth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fouth_reviews/1
  # PATCH/PUT /fouth_reviews/1.json
  def update
    respond_to do |format|
      if @fouth_review.update(fouth_review_params)
        format.html { redirect_to @fouth_review, notice: 'Fouth review was successfully updated.' }
        format.json { render :show, status: :ok, location: @fouth_review }
      else
        format.html { render :edit }
        format.json { render json: @fouth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fouth_reviews/1
  # DELETE /fouth_reviews/1.json
  def destroy
    @fouth_review.destroy
    respond_to do |format|
      format.html { redirect_to fouth_reviews_url, notice: 'Fouth review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fouth_review
      @fouth_review = FouthReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fouth_review_params
      params.require(:fouth_review).permit(:user_id, :fourth_test_id, :video, :likes2, :aprendizaje2)
    end
end
