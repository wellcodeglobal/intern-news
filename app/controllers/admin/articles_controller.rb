module Admin
class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    Article.create(
      title: params[:title],
      body: params[:body],
    )

    redirect_to admin_articles_path
  end

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])

    render "/admin/articles/edit"
  end

  def update
    Article.update(
      title: params[:title],
      body: params[:body],
      created_on: params[:created_on],
    )

    redirect_to "/admin/articles/"
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    flash[:note] = "Berhasil dihapus!"
    redirect_to admin_articles_path
  end

end
end
