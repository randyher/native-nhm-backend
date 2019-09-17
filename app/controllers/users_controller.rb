class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  # def index
  #   @users = User.all
  #   render json: @users
  # end

  def profile
    @user_games = @user.games
    render json: { user: @user, games: @user_games }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token }, status: :created
    else
      render json: { error: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :bio, :avatar)
  end
end
