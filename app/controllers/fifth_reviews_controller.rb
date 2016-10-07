class FifthReviewsController < ApplicationController
  before_action :set_fifth_review, only: [:show, :edit, :update, :destroy]

  # GET /fifth_reviews
  # GET /fifth_reviews.json
  def index
    @fifth_reviews = FifthReview.all
  end

  # GET /fifth_reviews/1
  # GET /fifth_reviews/1.json
  def show
  end

  # GET /fifth_reviews/new
  def new
    @fifth_review = FifthReview.new
  end

  # GET /fifth_reviews/1/edit
  def edit
  end

  # POST /fifth_reviews
  # POST /fifth_reviews.json
  def create
    @fifth_review = FifthReview.new(fifth_review_params)

    respond_to do |format|
      if @fifth_review.save
        format.html { redirect_to @fifth_review, notice: 'Fifth review was successfully created.' }
        format.json { render :show, status: :created, location: @fifth_review }
      else
        format.html { render :new }
        format.json { render json: @fifth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fifth_reviews/1
  # PATCH/PUT /fifth_reviews/1.json
  def update
    respond_to do |format|
      if @fifth_review.update(fifth_review_params)
        format.html { redirect_to @fifth_review, notice: 'Fifth review was successfully updated.' }
        format.json { render :show, status: :ok, location: @fifth_review }
      else
        format.html { render :edit }
        format.json { render json: @fifth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fifth_reviews/1
  # DELETE /fifth_reviews/1.json
  def destroy
    @fifth_review.destroy
    respond_to do |format|
      format.html { redirect_to fifth_reviews_url, notice: 'Fifth review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fifth_review
      @fifth_review = FifthReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fifth_review_params
      params.require(:fifth_review).permit(:user_id, :fourth_test_id, :problem2, :cliente2, :propuesta2, :ventajas2, :monetizacion2, :comunicacion2)
    end
end
