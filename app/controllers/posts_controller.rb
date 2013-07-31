class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def update
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :title, :price, :location, :email, :avatar, :remove_avatar)
  end

end
