class GamesController < ApplicationController
  def index
  end
  def new
    @game = Game.new
    @rankInScore = Game.all.order(score: "DESC")[9]
    if @rankInScore == nil
      gon.rankInScore = -1
    else
      gon.rankInScore = @rankInScore.score
    end
    @ranking = Game.all.order(score: "DESC")
  end
  def create
    @game = Game.create(name: game_params[:name], score: game_params[:score])
    @ranking = Game.all.order(score: "DESC")
    # redirect_to root_path
    if @game.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def top
    @ranking = Game.all.order(score: "DESC")
  end

  private
  def game_params
    params.require(:game).permit(:name, :score)
  end

end
