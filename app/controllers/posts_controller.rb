class PostsController < ApplicationController
def index

end
def new

end
def create
#render plain: params[:post].inspect
@post = Post.new(post_params)

@post.save

end
  private def post_params
params.require(:post).permit(:title, :body)
  end
end
