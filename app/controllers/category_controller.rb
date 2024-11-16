class CategoryController < ApplicationController
  def index
    categories = Category.select("*")
    render json:categories
  end

  def create
    category = Category.new(name:params[:name])
    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end


  private
  def category_params
    params.require(:category).permit(:name)
  end
end
