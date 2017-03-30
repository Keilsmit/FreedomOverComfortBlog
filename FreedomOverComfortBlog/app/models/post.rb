class Post < ApplicationRecord


  def index
    @post = Post.all
    render json: @post
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def new
    @post = Post.new
    render json: @post
  end

  def create
    @post = Post.new(post_params)
    if @post.save!
      flash[:success] = "Your post is posted!"
      render json: @post
    else
      render json: @post.errors
    end
  end


  def update
    @post = Post.find(params[:id])
    @post = Post.new(post_params)
    @post.save!
    render json: @post
  end


private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end

end
