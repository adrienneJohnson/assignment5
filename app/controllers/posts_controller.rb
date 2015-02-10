class PostsController <ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = @post.user
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to action: "index"
    else
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Post successfully updated."
      redirect_to post_path(@post)
    else
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    flash[:notice] = "Post was deleted."
    redirect_to posts_path
  end

end
