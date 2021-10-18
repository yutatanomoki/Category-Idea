class IdeasController < ApplicationController
  def create
    idea = Idea.new(idea_params)
    if catgory.save
      render json: { status: 'SUCCESS', data: idea }
    else
      render json: { status: 'ERROR', data: idea.errors }
    end
  end
end
