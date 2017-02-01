class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if params[:user][:password] == params[:user][:password_confirmation]
      # if @user.save
      #   session[:user_id] = @user.id
      #   redirect_to '/'
      # else
      #   flash[:msg] = "There was an error creating your account, please try again later"
      #   redirect_to signup_path
      # end 
    else
      flash[:msg] = "Nembe men"
      redirect_to signup_path
    end
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end