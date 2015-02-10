class HomeController <ApplicationController

def show
  end

  def search
    query = params[:query]
    @user = User.find_by_email(query)

    if @user
      flash[:notice] = "User found."
    else
      flash[:notice] = "No user found."
    end

    query = params[:query]
    @post = Post.find_by_title(query)

    if @post
      flash[:notice] = "Post found."
    else
      flash[:notice] = "No post found."
    end
  end

end
