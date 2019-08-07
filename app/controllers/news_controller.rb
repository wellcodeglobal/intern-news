class NewsController < ApplicationController

  def article
    @comments = Comment.all
  end

end
