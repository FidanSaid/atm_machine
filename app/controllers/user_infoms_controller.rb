class UserInfomsController < ApplicationController
  before_action :set_user_infom, only: [:show, :edit, :update, :destroy]

  # GET /user_infoms
  # GET /user_infoms.json
  def index
    @user_infoms = UserInfom.all
  end

  # GET /user_infoms/1
  # GET /user_infoms/1.json
  def show
  end

  # GET /user_infoms/new
  def new
    @user_infom = UserInfom.new
  end

  # GET /user_infoms/1/edit
  def edit
  end

  # POST /user_infoms
  # POST /user_infoms.json
  def create
    @user_infom = UserInfom.new(user_infom_params)

    respond_to do |format|
      if @user_infom.save
        format.html { redirect_to @user_infom, notice: 'User infom was successfully created.' }
        format.json { render :show, status: :created, location: @user_infom }
      else
        format.html { render :new }
        format.json { render json: @user_infom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_infoms/1
  # PATCH/PUT /user_infoms/1.json
  def update
    respond_to do |format|
      if @user_infom.update(user_infom_params)
        format.html { redirect_to @user_infom, notice: 'User infom was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_infom }
      else
        format.html { render :edit }
        format.json { render json: @user_infom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_infoms/1
  # DELETE /user_infoms/1.json
  def destroy
    @user_infom.destroy
    respond_to do |format|
      format.html { redirect_to user_infoms_url, notice: 'User infom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_infom
      @user_infom = UserInfom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_infom_params
      params.require(:user_infom).permit(:name, :address, :phone_number, :email)
    end
end
