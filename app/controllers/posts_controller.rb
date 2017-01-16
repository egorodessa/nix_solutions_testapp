class PostsController < ApplicationController
  def index
    # @posts = Post.all
    # binding.pry
    @posts = Post.page(params[:page])
  end
end
