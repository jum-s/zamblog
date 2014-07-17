Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/feed', :controller => 'posts', :action => :feed, :defaults => { :format => 'atom' }
  root 'posts#index'
  resources :posts

end
