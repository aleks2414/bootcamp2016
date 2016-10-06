class SecondTestsController < ApplicationController
  before_action :set_second_test, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  before_action :authenticate_user!

  # GET /second_tests
  # GET /second_tests.json
  def index
    @second_tests = SecondTest.all
    @second_testa = current_user.second_tests
  end

  # GET /second_tests/1
  # GET /second_tests/1.json
  def show
  end

  # GET /second_tests/new
  def new
    @second_test = SecondTest.new
  end

  # GET /second_tests/1/edit
  def edit
  end

  # POST /second_tests
  # POST /second_tests.json
  def create
    @second_test = SecondTest.new(second_test_params)
    @second_test.user_id=current_user.id

    if @second_test.save
      redirect_to @user
    else
      render 'new'
    end
  end

  # PATCH/PUT /second_tests/1
  # PATCH/PUT /second_tests/1.json
  def update
    respond_to do |format|
      if @second_test.update(second_test_params)
        format.html { redirect_to @user, notice: 'Second test was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @second_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_tests/1
  # DELETE /second_tests/1.json
  def destroy
    @second_test.destroy
    respond_to do |format|
      format.html { redirect_to second_tests_url, notice: 'Second test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_test
      @second_test = SecondTest.find(params[:id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_test_params
      params.require(:second_test).permit(:boceto, :user_id)
    end
end
