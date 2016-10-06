class ThirdTestsController < ApplicationController
  before_action :set_third_test, only: [:show, :edit, :update, :destroy]

  # GET /third_tests
  # GET /third_tests.json
  def index
    @third_tests = ThirdTest.all
    @third_testa = current_user.third_tests
  end

  # GET /third_tests/1
  # GET /third_tests/1.json
  def show
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
    @second_test.user = current_user

    respond_to do |format|
      if @third_test.save
        format.html { redirect_to @third_test, notice: 'Third test was successfully created.' }
        format.json { render :show, status: :created, location: @third_test }
      else
        format.html { render :new }
        format.json { render json: @third_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /third_tests/1
  # PATCH/PUT /third_tests/1.json
  def update
    respond_to do |format|
      if @third_test.update(third_test_params)
        format.html { redirect_to @third_test, notice: 'Third test was successfully updated.' }
        format.json { render :show, status: :ok, location: @third_test }
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def third_test_params
      params.require(:third_test).permit(:info2, :likes1, :aprendizajes1, :string, :user_id)
    end
end