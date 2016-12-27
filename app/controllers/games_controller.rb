class GamesController < ApplicationController
  def index
    @games = Game.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to games_path
  end

  private def game_params
    params.require(:game).permit(:title, :month_played)
  end
end