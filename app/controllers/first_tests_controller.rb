class FirstTestsController < ApplicationController
  before_action :set_first_test, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate_user!

  # GET /first_tests
  # GET /first_tests.json
  def index
    @first_tests = FirstTest.all
    @first_testa = current_user.first_tests
  end

  # GET /first_tests/1
  # GET /first_tests/1.json
  def show
  end

  # GET /first_tests/new
  def new
    @first_test = FirstTest.new
  end

  # GET /first_tests/1/edit
  def edit
  end

  # POST /first_tests
  # POST /first_tests.json
  def create
    @first_test = FirstTest.new(first_test_params)
    @first_test.user_id=current_user.id

    if @first_test.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  # PATCH/PUT /first_tests/1
  # PATCH/PUT /first_tests/1.json
  def update
    respond_to do |format|
      if @first_test.update(first_test_params)
        format.html { redirect_to @user, notice: 'First test was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @first_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_tests/1
  # DELETE /first_tests/1.json
  def destroy
    @first_test.destroy
    respond_to do |format|
      format.html { redirect_to first_tests_url, notice: 'First test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_test
      @first_test = FirstTest.find(params[:id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_test_params
      params.require(:first_test).permit(:info1, :user_id)
    end
end
