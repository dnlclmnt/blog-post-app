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
        @blog = BlogPost.create(blog_params)
        if @blog.valid?
            redirect_to blogs_path
        else
            redirect_to new_blog_path
        end
    end

    private def blog_params
        params.require(:blog).permit(:title, :content)
    end

end
