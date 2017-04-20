class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)

    if @post.save!
      flash[:success] = "Your post has been submitted!"
      render json: @post
    else
      # render :new
    end
  end


private

  def post_params
    params.require(:post).permit(:title, :summary)
  end



end
