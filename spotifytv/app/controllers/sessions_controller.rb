class SessionsController < ApplicationController

  def new
  end

  def create
    user = Account.find_by(name: params[:session][:name].downcase)
    if user && (params[:session][:password]== user.password)
      # Log the user in and redirect to the user's show page.
      log_in user
      format.html { redirect_to @account, notice: "Login successfully." }
      format.json { render :show, status: :created, location: @account }
    else
      # Create an error message.(does not work)
      format.html { redirect_to @login, notice: "Wrong username and password combination." }
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end