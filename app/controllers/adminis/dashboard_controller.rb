module Adminis
class DashboardController < ApplicationController

  def index
    @articles = Article.all
    @categories = Category.all
  end

end
end
