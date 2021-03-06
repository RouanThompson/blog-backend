class BlogsController < ApplicationController

    def index
        blogs = Blog.all
        # gives a json back to front end
        render json: blogs
    end

    def create
        blog = Blog.create(blog_params)
        render json: blog 
    end

    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
    end

    def update
        blog = Blog.find(params[:id])
        blog.update(blog_params)
        blogs = Blog.all
        render json: blogs
    end

    # I need more info on everything below
    private
    
    def blog_params
        params.require(:blog).permit(:cover_image, :title, :story, :likes, :user_id)
    end

end
