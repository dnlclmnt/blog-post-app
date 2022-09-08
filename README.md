# Challenges
<!-- As a developer, I have been commissioned to create an application where a user can see and create blog posts. -->
<!-- As a developer, I can create a full-stack Rails application. -->
rails new blog_post_challenge_dc_cr -d postgresql -T
cd blog_post_challenge_dc_cr
rails db:create
rails s
git remote add origin https://github.com/learn-academy-2022-echo/full-stack-rails-team-sequoia.git
git add .
git commit -m "Initial commit"
git push origin main
git checkout -b blog-post-dc-cr
<!-- As a developer, my blog post can have a title and content. -->
rails g model BlogPost title:string content:string
rails g controller Blog
rails db:migrate
<!-- As a developer, I can add new blog posts directly to my database. -->

<!-- As a user, I can see all the blog titles listed on the home page of the application. -->
<!-- CONTROLLER -->
class BlogController < ApplicationController
    def index
        @blogs = BlogPost.all
    end

end

<!-- VIEW -->
<h1>Blog Posts</h1>

<% @blogs.map do |val| %>
    <ul>
        <li>
        <%= val.title %>
        </li>
    </ul>
<% end %>

<!-- ROUTE -->

Rails.application.routes.draw do
  root "blog#index"
  get 'blogs' => 'blog#index'
end


<!-- As a user, I can click on the title of a blog and be routed to a page where I see the title and content of the blog post I selected. -->
<!-- As a user, I can navigate from the show page back to the home page. -->
<!-- As a user, I see a form where I can create a new blog post. -->
<!-- As a user, I can click a button that will take me from the home page to a page where I can create a blog post. -->
<!-- As a user, I can navigate from the form back to the home page. -->
<!-- As a user, I can click a button that will submit my blog post to the database. -->
<!-- As a user, I when I submit my post, I am redirected to the home page. -->
# Stretch Challenges
<!-- As a user, I can delete my blog post. -->
git checkout -b delete-blog-post-dc-cr

<!-- As a user, I can update my blog post. -->
<!-- As a developer, I can ensure that all blog posts have titles and content for each post. -->

<!-- Created strong params to check for title and content. Create method will call on blog_post_params to check if new blog post is valid -->
def create
        @blog = BlogPost.create(blog_post_params)
        if @blog.valid?
            redirect_to blog_posts_path
        else
            redirect_to new_blog_post_path
        end
    end

    private 
        def blog_post_params
            params.require(:blog_post).permit(:title, :content)
        end
<!-- As a developer, I can ensure that all blog post titles are unique. -->
<!-- As a developer, I can ensure that blog post titles are at least 10 characters. -->
