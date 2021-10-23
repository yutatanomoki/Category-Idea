class IdeasController < ApplicationController
  def index
    ideas = Idea.all
    render json: ideas, each_serializer: IdeaSerializer, include: [:category]
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
