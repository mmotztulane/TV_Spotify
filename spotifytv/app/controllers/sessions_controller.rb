class SessionsController < ApplicationController

  def new
  end

  def create
    user = Account.find_by(name: params[:session][:name].downcase)
    if user && (params[:session][:password]== user.password)
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to accounts_path, notice: "Login successfully." 
      
    else
      # Create an error message.(does not work)
      redirect_to login_path, notice: "Wrong username and password combination." 
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end