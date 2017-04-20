class CommentsController < ApplicationController

  def index
    @comment = Comments.all
    render json: @comment
end
