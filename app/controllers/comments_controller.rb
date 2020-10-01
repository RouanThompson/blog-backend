class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def create
        blogs = Blog.all
        comment = Comment.create(comment_params)
        render json: blogs
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:statement, :likes, :user_id, :blog_id, :name)
    end
end
