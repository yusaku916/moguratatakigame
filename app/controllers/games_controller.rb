class GamesController < ApplicationController
  def index
  end
  def new
    @score = params[:score]
    @game = Game.new
    Game.count < 10
    @rankInScore = Game.all.order(score: "DESC")[9]
    @ranking = Game.all.order(score: "DESC")
    # binding.pry
  end
  def create
    @game = Game.create(name: game_params[:name], score: game_params[:score])
    redirect_to root_path
  end

  def top
    @ranking = Game.all.order(score: "DESC")
  end

  private
  def game_params
    params.require(:game).permit(:name, :score)
  end

end
