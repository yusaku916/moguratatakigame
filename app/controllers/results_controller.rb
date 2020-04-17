class ResultsController < ApplicationController
  def index
    @score = params[:score]
    @score2 = "999"
  end
  def new
    @result = Result.new
  end
  def create

  end
end
