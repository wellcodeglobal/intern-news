module Admin
class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    Article.create(
      title: params[:title],
      body: params[:body],
      created_on: params[:created_on],
    )

    redirect_to "/admin/articles"
  end

  def index
    @articles = Article.all
  end

  def edit
    @articles = Article.edit(
      params[:id]
    )

    redirect_to "/admin/articles/new"
  end

  def update
    Article.update(
      title: params[:title],
      body: params[:body],
      created_on: params[:created_on],
    )

    redirect_to "/admin/articles"
  end

  def destroy
    session[:current_article_id] = nil
    flash[:notice] = "You have successfully delete the file."

    redirect_to "/admin/articles"
  end

end
end
