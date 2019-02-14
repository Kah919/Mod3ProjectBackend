class Api::V1::UsersController < ApplicationController
  def index
    @user = User.all
    render json: @user
  end

  def create
    User.find_or_create_by(user_params)
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
