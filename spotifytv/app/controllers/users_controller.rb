class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
    
    @title = params[:title] if params[:title]
      
      set_session(@title)
      
    if !@title
      @title = get_title() unless @title
      redirect_to users_path({title: @title}) 
    end
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    if !login_signed_in?
        redirect_to new_login_session_path, :notice => 'You need to login first.'
    else
        # Render the view
        @user = User.new
    end
  end

  # GET /users/1/edit
  def edit
      if current_login != @user.login
        redirect_to @user, notice: "You cannot change another user's opinion."
      else
        # Render the view
      end
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "Opinion was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Opinion was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "Opinion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :reaction, :comment, :login_id, :movie_id)
    end
    
    def set_session(title)
        session[:title] = title if title
    end
    
  def get_title()
    if session[:title] then session[:title]
      else "title"
    end
  end
      
  
end
