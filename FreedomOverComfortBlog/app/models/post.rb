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
  end

  def create
    @post = Post.new(post_params)
    if @post.save!
      flash[:success] = "Your post is posted!"
      redirect_to root_path
    else
      render :new
    end
  end






end
