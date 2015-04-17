class GamesController < ApplicationController
  def index
    @games = Game.all
    if params[:date] && params[:state]
      @found_games = []
      @games = Game.all
      @games.each do |event|
        if event.date.to_s == params[:date] && event.state == params[:state]
          @found_games << event
        end
      end
    end
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to @game
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    @games = Game.all
    @results = Game.search(params[:date], params[:state])
  end

  private
  def game_params
    params.require(:game).permit(
      :title,
      :date,
      :city,
      :state,
      :zip,
      :address
      )
  end
end