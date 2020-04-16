class ResultsController < ApplicationController
  def index
    @score = params[:score]
    @score2 = "999"
  end
end
