class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params["post"]["title"],
      content: params["post"]["content"],
      author: params["post"]["author"]
    )

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
      flash[:notice] = 'Post was successfully created'
    else
      render :new
    end
  end

  def  edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(
      title: params["post"]["title"] || post.title,
      content: params["post"]["content"] || post.content,
      author: params["post"]["author"] || post.author,
    )
    redirect_to @post, notice: 'Post was successfully updated.'
    flash[:notice] = 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully deleted.'
  end
end
