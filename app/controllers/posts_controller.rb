class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @article = Post.find(params[:id])
  end

  def update
    @article = Post.find(params[:id])
    if @article.update(post_params)
      redirect_to post_path(@article)
    else 
      render :edit
    end
  end


  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
