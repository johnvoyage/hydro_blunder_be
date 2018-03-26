class Api::V1::UsersController < ApplicationController

  def index
      @users = User.all
      render json: @users
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

    private
    def note_params
      params.require(:user).permit(:username, :high_score, :game_count, :drink_count)
    end

end
