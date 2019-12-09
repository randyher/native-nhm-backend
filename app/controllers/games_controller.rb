class GamesController < ApplicationController

  before_action :find_game, only: [:update, :show, :destroy]

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.new(game_params)
    # game.user = current_user
    if @game.save
      render json: @game
    else
      render json: {message: "No Game!"}
    end
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

 



  private

    def game_params
    params.require(:game).permit(:user_id, :score, :time_remaining, :problems, :game_type, :number_sentences)
    end

    def find_game
        @game = Game.find(params[:id])
    end
end
