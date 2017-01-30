class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:password] == params[:password_confirmation]
      flash.now[:msg] = "iguales"
      redirect_to signup_path
      # if @user.save
      #   session[:user_id] = @user.id
      #   redirect_to '/'
      # else
      #   redirect_to signup_path
      # end 
    else
      flash.now[:msg] = "Nembe men"
      redirect_to signup_path
    end
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end