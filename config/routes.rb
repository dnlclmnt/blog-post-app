Rails.application.routes.draw do
  root "blog#index"
  # index route
  get 'blogs' => 'blog#index', as: 'blogs'
  # new route
  get 'blogs/new' => 'blog#new', as: 'new_blog'
  # show route
  get 'blogs/:id' => 'blog#show', as: 'blog'
  # create route
  post 'blogs' => 'blog#create'
end
