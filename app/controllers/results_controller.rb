class ResultsController < ApplicationController
  def index
    @score = params[:score]
    @score2 = "999"
  end
  def new
    @score = params[:score]
    @result = Result.new
  end
  def create
    @result = Result.create(name: result_params[:name], score: result_params[:score])
  end

  private
  def result_params
    params.require(:result).permit(:name, :score)
  end

end
