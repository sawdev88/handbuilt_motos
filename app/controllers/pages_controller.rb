class PagesController < ApplicationController
  def index
  end

  def home
  end

  def garage_list
  end

  def garage_feed
    @posts = Post.all
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice => "User Not Found."
    end

    @posts = Post.all.where('user_id = ?', User.find_by_username(params[:id]))
  end
end
