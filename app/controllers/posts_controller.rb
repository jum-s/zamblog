class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").all
  end

  def feed
    @title = "FEED title"
    @posts = Post.order("updated_at desc")

    @updated = @posts.first.updated_at unless @posts.empty?

    respond_to do |format|
      format.rss { redirect_to feed_path(:format => :atom), :status => :moved_permanently }
      format.atom { render :layout => false }
    end
  end

end
