class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to @game
  end

  def search
    @games = Game.all
    if params[:date] && params[:state]
      @game = Game.where(state: params[:state], date: params[:date])
    end
    render 'index'
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