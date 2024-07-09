class UserManagementsController < ApplicationController
  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :address, :first_name, :last_name, :role, :gender, :country, :phone_no, :id_card)
  end
  
end
