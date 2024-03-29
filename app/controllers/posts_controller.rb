class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create 	
    @post = Post.create(post_params)

    if @post.valid?
    	redirect_to post_path(@post)
    else
    	render :new 
    end

	end

	def show
		@post = Post.find(params[:id])
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
