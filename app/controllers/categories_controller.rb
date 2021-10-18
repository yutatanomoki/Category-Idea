class CategoriesController < ApplicationController
  def index
    categorys = Category.all
    render json: categorys, each_serializer: CategorySerializer
  end

  def create
    category = Category.new(category_params)
    if catgory.save
      render json: { status: 'SUCCESS', data: category }
    else
      render json: { status: 'ERROR', data: category.errors }
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
