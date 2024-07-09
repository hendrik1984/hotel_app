class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    debugger
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url(@user), notice: "User was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # sample code to update password
  # def update_user_password
  #   @user = User.find(params[:id])
  #   if @user.update(password_params)
  #     redirect_to @user, notice: 'Password was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :address, :first_name, :last_name, :role, :gender, :country, :phone_no, :id_card, :password, :password_confirmation)
  end
  
end
