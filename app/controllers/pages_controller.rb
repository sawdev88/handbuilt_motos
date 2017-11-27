class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all

    # Show the 5 newest users
    @toFollow = User.all.first(5);
  end

  def garage_list
  end

  def garage_feed
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "User Not Found."
    end

    @posts = Post.all.where('user_id = ?', User.find_by_username(params[:id]))
    @newPost = Post.new
  end
end
