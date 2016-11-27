class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  
  
      def new_deposit
         @account = Account.find(params[:id])
      end
      
    def create_deposit
           
        @account = Account.find(params[:id])
        
              if @account.deposit(deposit_params)
                 redirect_to atm_mach_path(session[:atm_no])
              else
              
                render :new_deposit
              end
  
    end
    
    
    
     def new_withdrawal
  
         @account = Account.find(params[:id])
     end
    
      
    def create_withdrawal
           
        @account = Account.find(params[:id])
        
              if @account.withdrawal(withdrawal_params)
                 redirect_to atm_mach_path(session[:atm_no])
              else
              
                render :new_withdrawal
              end
  
    end
    
    
    def select_transaction 
  
    end















  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
    @atm_id = params[:my_atm]
    session[:my_atm] = params[:my_atm]
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  
  
  
  
  
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   def user_is_admin
      unless current_user.admin
        flash[:error] = "you don't have permission to access this page"
        redirect_to root_path
      end
   end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end
    
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:account_number, :status, :balance, :user_id)
    end
    
    def deposit_params
      params.require(:account).permit(:amount)
    end
    
    def withdrawal_params
      params.require(:account).permit(:amount)
    end
end
