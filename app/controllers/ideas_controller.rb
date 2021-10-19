class IdeasController < ApplicationController
  def index
    ideas = idea.all
    render json: @ideas
  end

  def show
    ideas = Idea.find(params[:id])
    category =  idea.category
    render json: @ideas
  end

  def create
    idea = Idea.new(idea_params)
    if idea.save
      render json: { status: 'SUCCESS', data: idea }
    else
      render json: { status: 'ERROR', data: idea.errors }
    end
  end

  def idea_params
    params.require(:idea).permit(:body)
  end
end
