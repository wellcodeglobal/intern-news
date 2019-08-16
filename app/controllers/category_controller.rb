class CategoryController < ApplicationController
  def show
    @category = Category.find params[:id]
    @articles = Article.all params[category/:id]
  end
end
