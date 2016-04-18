Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  get 'welcome/index'

 resources :docs
 authenticated :user do
  root "docs#index", as: "authenticated_root"
end

 root 'welcome#index'
end
