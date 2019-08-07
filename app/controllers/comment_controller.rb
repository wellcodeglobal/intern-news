class CommentController < ApplicationController

  def create
    Comment.create(
      name: params[:name],
      email: params[:email],
      komentar: params[:komentar],
    )

    redirect_to "/article"
  end

end
