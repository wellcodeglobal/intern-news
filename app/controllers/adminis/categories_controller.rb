module Adminis
class CategoriesController < ApplicationController

  def new
    @categories = Category.new
  end

  def create
    Category.create(
      name_category: params[:name_category],
      created_on: params[:created_on],
    )

    redirect_to "/admin/categories"
  end

  def index
    @categories = Category.all
  end

  def edit
    @categories = Category.edit(
      params[:id]
    )

    redirect_to "/admin/categories/new"
  end

  def update
    Category.update(
      name_category: params[:name_category],
      created_on: params[:created_on],
    )

    redirect_to "/admin/categories"
  end

  def destroy
    session[:current_article_id] = nil
    flash[:notice] = "You have successfully delete it."

    redirect_to "/admin/categories"
  end

end
end
