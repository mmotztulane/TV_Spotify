class AccountsController < ApplicationController
    before_action :set_account, only: %i[ show edit update destroy ]
    
    def index
        @accounts = Account.all
    end
    
    def show
    end
    
    def new
        @account = Account.new
    end
    
    def edit
    end
    
    def create
        @account = Account.new(account_params)

        respond_to do |format|
          if @account.save
            format.html { redirect_to @account, notice: "Account was successfully created." }
            format.json { render :show, status: :created, location: @account }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @account.errors, status: :unprocessable_entity }
          end
        end
    end

    def update
        respond_to do |format|
          if @account.update(account_params)
            format.html { redirect_to @account, notice: "Account info was successfully updated." }
            format.json { render :show, status: :ok, location: @account }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @account.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def destroy
        @account.destroy
        respond_to do |format|
          format.html { redirect_to account_url, notice: "Account was successfully destroyed." }
          format.json { head :no_content }
        end
  end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_params
      params.require(:account).permit(:name, :password)
    end
end
