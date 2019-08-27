class ProblemsController < ApplicationController

  def index
    @problems = Problem.all
    render json: @problems
  end
  
end
