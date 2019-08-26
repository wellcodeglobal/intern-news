module Admin
class DashboardController < ApplicationController
  before_action :require_login
  
  def index
    @articles = Article.all
    @categories = Category.all
  end

end
end
