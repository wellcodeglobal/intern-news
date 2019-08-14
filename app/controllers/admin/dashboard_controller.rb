module Admin
class DashboardController < ApplicationController

  def index
    @articles = article.all
    @categories = category.all
  end

end
end
