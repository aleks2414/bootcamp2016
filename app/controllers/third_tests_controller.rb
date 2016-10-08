class ThirdTestsController < ApplicationController
  before_action :set_third_test, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate_user!

  # GET /third_tests
  # GET /third_tests.json
  def index
    @third_tests = ThirdTest.all
    @third_testa = current_user.third_tests
  end

  # GET /third_tests/1
  # GET /third_tests/1.json
  def show
    if @third_test.third_reviews.blank?
      @avg_info2=0
      @avg_likes1=0
      @avg_aprendizaje1=0
    else
      @avg_info2=@third_test.third_reviews.average(:info2).round(2)
      @avg_likes1=@third_test.third_reviews.average(:likes1).round(2)
      @avg_aprendizaje1=@third_test.third_reviews.average(:aprendizaje1).round(2)

    end
  end

  # GET /third_tests/new
  def new
    @third_test = ThirdTest.new
  end

  # GET /third_tests/1/edit
  def edit
  end

  # POST /third_tests
  # POST /third_tests.json
  def create
    @third_test = ThirdTest.new(third_test_params)
    @third_test.user_id=current_user.id

    if @third_test.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /third_tests/1
  # PATCH/PUT /third_tests/1.json
  def update
    respond_to do |format|
      if @third_test.update(third_test_params)
        format.html { redirect_to @user, notice: 'Third test was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @third_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /third_tests/1
  # DELETE /third_tests/1.json
  def destroy
    @third_test.destroy
    respond_to do |format|
      format.html { redirect_to third_tests_url, notice: 'Third test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_third_test
      @third_test = ThirdTest.find(params[:id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def third_test_params
      params.require(:third_test).permit(:info2, :likes1, :aprendizajes1, :string, :user_id)
    end
end
