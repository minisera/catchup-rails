class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    param = params.require(:user).permit(:name, :email)
    @user = User.new(param)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
end
