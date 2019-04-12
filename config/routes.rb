RailsBlog::Application.routes.draw do

  # resources :comments
  resources :users
  resources :tags
  resources :posts do
    resources :comments
  end

end
