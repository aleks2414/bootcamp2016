class FourthTestsController < ApplicationController
  before_action :set_fourth_test, only: [:show, :edit, :update, :destroy]

  # GET /fourth_tests
  # GET /fourth_tests.json
  def index
    @fourth_tests = FourthTest.all
    @fourth_testa = current_user.fourth_tests
  end

  # GET /fourth_tests/1
  # GET /fourth_tests/1.json
  def show
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
    @fourth_test.user = current_user

    respond_to do |format|
      if @fourth_test.save
        format.html { redirect_to @fourth_test, notice: 'Fourth test was successfully created.' }
        format.json { render :show, status: :created, location: @fourth_test }
      else
        format.html { render :new }
        format.json { render json: @fourth_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fourth_tests/1
  # PATCH/PUT /fourth_tests/1.json
  def update
    respond_to do |format|
      if @fourth_test.update(fourth_test_params)
        format.html { redirect_to @fourth_test, notice: 'Fourth test was successfully updated.' }
        format.json { render :show, status: :ok, location: @fourth_test }
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourth_test_params
      params.require(:fourth_test).permit(:video, :likes2, :aprendizajes2, :user_id)
    end
end
