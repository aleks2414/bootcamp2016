class FourthTestsController < ApplicationController
  before_action :set_fourth_test, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate_user!

  # GET /fourth_tests
  # GET /fourth_tests.json
  def index
    @fourth_tests = FourthTest.all
    @fourth_testa = current_user.fourth_tests
  end

  # GET /fourth_tests/1
  # GET /fourth_tests/1.json
  def show
    if @fourth_test.fourth_reviews.blank?
      @avg_video=0
      @avg_likes2=0
      @avg_aprendizaje2=0
    else
      @avg_video=@fourth_test.fourth_reviews.average(:video).round(2)
      @avg_likes2=@fourth_test.fourth_reviews.average(:likes2).round(2)
      @avg_aprendizaje2=@fourth_test.fourth_reviews.average(:aprendizaje2).round(2)
    end

    if @fourth_test.fifth_reviews.blank?
      @avg_problem2=0
      @avg_cliente2=0
      @avg_propuesta2=0
      @avg_ventajas2=0
      @avg_monetizacion2=0
      @avg_comunicacion2=0
    else
      @avg_problem2=@fourth_test.fifth_reviews.average(:problem2).round(2)
      @avg_cliente2=@fourth_test.fifth_reviews.average(:cliente2).round(2)
      @avg_propuesta2=@fourth_test.fifth_reviews.average(:propuesta2).round(2)
      @avg_ventajas2=@fourth_test.fifth_reviews.average(:ventajas2).round(2)
      @avg_monetizacion2=@fourth_test.fifth_reviews.average(:monetizacion2).round(2)
      @avg_comunicacion2=@fourth_test.fifth_reviews.average(:comunicacion2).round(2)
    end

    if @fourth_test.sixth_reviews.blank?
      @avg_problem3=0
      @avg_cliente3=0
      @avg_propuesta3=0
      @avg_ventajas3=0
      @avg_monetizacion3=0
      @avg_comunicacion3=0
    else
      @avg_problem3=@fourth_test.sixth_reviews.average(:problem3).round(2)
      @avg_cliente3=@fourth_test.sixth_reviews.average(:cliente3).round(2)
      @avg_propuesta3=@fourth_test.sixth_reviews.average(:propuesta3).round(2)
      @avg_ventajas3=@fourth_test.sixth_reviews.average(:ventajas3).round(2)
      @avg_monetizacion3=@fourth_test.sixth_reviews.average(:monetizacion3).round(2)
      @avg_comunicacion3=@fourth_test.sixth_reviews.average(:comunicacion3).round(2)
    end

  end

  # GET /fourth_tests/new
  def new
    @fourth_test = FourthTest.new
  end

  # GET /fourth_tests/1/edit
  def edit
  end

  # POST /fourth_tests
  # POST /fourth_tests.json
  def create
    @fourth_test = FourthTest.new(fourth_test_params)
    @fourth_test.user_id = current_user.id

    if @fourth_test.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /fourth_tests/1
  # PATCH/PUT /fourth_tests/1.json
  def update
    respond_to do |format|
      if @fourth_test.update(fourth_test_params)
        format.html { redirect_to @user, notice: 'Fourth test was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @fourth_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourth_tests/1
  # DELETE /fourth_tests/1.json
  def destroy
    @fourth_test.destroy
    respond_to do |format|
      format.html { redirect_to fourth_tests_url, notice: 'Fourth test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourth_test
      @fourth_test = FourthTest.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourth_test_params
      params.require(:fourth_test).permit(:video, :likes2, :aprendizajes2, :user_id)
    end
end
