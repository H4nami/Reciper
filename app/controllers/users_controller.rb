class UsersController < ApplicationController
  before_action :require_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)    
    if params[:user][:password] == params[:user][:password_confirmation]
      if @user.save
        session[:user_id] = @user.id
        redirect_to edit_path
      else
        flash[:msg] = "There was an error creating your account, please try again later"
        redirect_to signup_path
      end
    else
      flash[:msg] = "Password and Password confirmation do not match"
      render signup_path
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      flash[:msg] = "Succed, information updated"
      redirect_to edit_path
    else
      render edit_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end