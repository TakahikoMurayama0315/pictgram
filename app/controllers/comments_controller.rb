class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
  end


end
