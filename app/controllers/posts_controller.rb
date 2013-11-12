class PostsController < ApplicationController
   before_filter :authenticate_user!

   def new
   	@post = current_user.posts.build
   end

   def edit
   end

   def show
   end

   def create
   	@post = current_user.posts.build(post_params)
   	if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
   end

   def destroy
   end

   private

    def post_params
      params.require(:post).permit(:content, :name, :price)
    end
end