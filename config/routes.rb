Rails.application.routes.draw do
  root "blog#index"
  # index route
  get 'blog_posts' => 'blog#index', as: 'blog_posts'
  # new route
  get 'blog_posts/new' => 'blog#new', as: 'new_blog_post'
  # show route
  get 'blog_posts/:id' => 'blog#show', as: 'blog_post'
  # create route
  post 'blog_posts' => 'blog#create'
  # edit route
  get 'blog_posts/edit/:id' => 'blog#edit', as: 'edit_blog_post'
  # update route
  patch 'blog_posts/:id' => 'blog#update'
  # destroy route
  delete 'blog_posts/:id' => 'blog#destroy', as: 'delete_blog_post'
end
