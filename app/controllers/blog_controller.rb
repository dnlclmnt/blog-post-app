class BlogController < ApplicationController
    def index
        @blogs = BlogPost.all
    end

    def show
        @blog = BlogPost.find(params[:id])
    end

    def new 
        @blog = BlogPost.new
    end

    def create
        @blog = BlogPost.create(blog_post_params)
        if @blog.valid?
            redirect_to blog_posts_path
        else
            redirect_to new_blog_post_path
        end
    end

    def edit
        @blog = BlogPost.find(params[:id])
    end

    def update
        @blog = BlogPost.find(params[:id])
        @blog.update(blog_post_params)
        if @blog.valid?
            redirect_to blog_post_path(@blog)
        else
            redirect_to edit_blog_post_path(@blog)
        end
    end

    def destroy
        @blog = BlogPost.find(params[:id])
        if @blog.destroy
            redirect_to blog_posts_path
        end
    end

    private 
        def blog_post_params
            params.require(:blog_post).permit(:title, :content)
        end

end
