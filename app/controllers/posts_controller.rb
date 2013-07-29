class PostsController < ApplicationController
    def new
        @post = Post.new
        end
    
    def index
        @posts = Post.all
        end
    
    def create
        @post = Post.new
        @post.title = params[:post][:title]
        @post.text = params[:post][:text]
        @post.expec = params[:post][:expec]
        @post.notes = params[:post][:notes]
        
        @post.save
        redirect_to posts_path
        end
    
    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
        end
    
    def update
        @post = Post.find(params[:id])
        @post.update_attributes(params[:post])
        
        redirect_to post_path(@post)
        end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        
        redirect_to posts_path
        end
    
    
    
    
    
    private
    def post_params
        params.require(:post).permit(:title, :text, :expec)
        end
    
end
