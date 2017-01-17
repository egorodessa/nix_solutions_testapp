class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts.as_json(except: [:id, :created_at, :updated_at])
  end

  def show
    @post = Post.find(params[:id])
    render json: @post.as_json(except: [:id, :created_at, :updated_at])
  end
end
