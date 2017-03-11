Rails.application.routes.draw do
  resources :allignment_types
  resources :candidates
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#index'
  get '/user_controls', to: 'user_controls#user_controls', as: :admin_user_controls
  get '/user_controls/:id', to: 'user_controls#edit_user', as: :admin_user_edit
  delete '/user_controls/:id', to: 'user_controls#destroy', as: :admin_user_delete
  patch '/users_controls/:id', to: 'user_controls#update', as: :admin_user_update
end
