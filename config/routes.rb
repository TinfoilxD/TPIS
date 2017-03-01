Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#index'
  get '/user_controls', to: 'admin#user_controls'
  get '/user_controls/:id', to: 'admin#edit_user', as: :admin_user_edit
  delete '/user_controls/:id', to: 'users#destroy', as: :admin_user_delete
  patch '/users_controls/:id', to: 'user#update', as: :admin_user_update
end
