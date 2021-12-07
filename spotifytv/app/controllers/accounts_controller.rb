class AccountsController < ApplicationController
    before_action :set_account, only: %i[ show edit update destroy ]
    #before_action :authenticate_user!

   def index
        if !login_signed_in?
            redirect_to new_login_session_path, :notice => 'You need to login first.'
        else
        # Render the view
        @accounts = Account.all
        @users = User.all
        end
 
    end
    
    def show
    end
    
    def new
        @account = Account.new
    end
    
    def edit
    end
        
  def search
    if params[:search].blank?
      redirect_to :back and return
    else
        @parameter = params[:search].downcase
        @matchMovie = Movie.all.where("lower(movie) LIKE ?", "%#{@parameter}%")
        @matchLogin = Login.all.where("lower(email) LIKE ?", "%#{@parameter}%")
    end
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
          format.html { redirect_to accounts_url, notice: "Account was successfully destroyed." }
          format.json { head :no_content }
        end
  end
  def user_followers
      @account = Account.where(id: params[:id]).first
      @followers = @account.get_followers
    end

def user_following
  @account = Account.where(id: params[:id]).first
  @following = @account.get_following
end
def get_followers
  Follower.where(follower_id: self.id)
end

def get_following
  Follower.where(user_id: self.id)
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
