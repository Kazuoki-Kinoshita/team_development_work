Rails.application.routes.draw do
  get 'blogs/index'
  root to: 'blogs#index'
  resources :blogs
end
