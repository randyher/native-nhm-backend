class ProblemsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @problems = Problem.all
    render json: @problems
  end

  def show
    @problem = Problem.find(params[:id])
    render json: @problem
  end
end
