class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])

    @user.update(note_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    render json: @users
  end

  private

  def user_params
    params.require(:user).permit(:username, :high_score, :game_count, :drink_count)
  end

end
