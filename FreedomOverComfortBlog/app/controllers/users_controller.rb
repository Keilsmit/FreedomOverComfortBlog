class UsersController < ApplicationController


  def index
    @user = User.all
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end





private

  def user_params
    params.permit(:email, :password, :images, :name)
  end

end
