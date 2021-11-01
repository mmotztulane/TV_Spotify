class AccountController < ApplicationController
    def index
        
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
          if @account.update(movie_params)
            format.html { redirect_to @account, notice: "Account info was successfully updated." }
            format.json { render :show, status: :ok, location: @account }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @account.errors, status: :unprocessable_entity }
          end
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
