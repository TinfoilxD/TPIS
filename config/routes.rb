Rails.application.routes.draw do
  resources :appointments
  resources :faculty_types
  resources :faculties
  resources :application_forms
  resources :training_centers
  resources :courses
  resources :course_types
  resources :experiences
  resources :alignment_types
  resources :candidates
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#default_landing'
  get '/error', to:'landing#error', as: :error

  get '/pathing', to: 'pathing#sign_in_reroute', as: :pathing

  get '/candidate_landing', to: 'landing#candidate_landing', as: :candidate_landing
  get '/system_admin_landing', to: 'landing#system_admin_landing', as: :system_admin_landing
  get '/tcf_admin_landing', to: 'landing#tcf_admin_landing', as: :tcf_admin_landing
  get '/tcf_landing', to: 'landing#tcf_landing', as: :tcf_landing


  get '/staff', to: 'user_controls#staff', as: :staff
  get '/role_candidate', to: 'user_controls#candidate', as: :candidate_role
  get '/user_controls', to: 'user_controls#user_controls', as: :admin_user_controls
  get '/user_controls/:id', to: 'user_controls#edit_user', as: :admin_user_edit
  delete '/user_controls/:id', to: 'user_controls#destroy', as: :admin_user_delete
  patch '/users_controls/:id', to: 'user_controls#update', as: :admin_user_update
  get '/book_appointment', to: 'appointments#book_appointment', as: :candidate_book_appointment
  
  get '/candidates/:id/edit', to: 'candidates#edit', as: :profile_edit
  get '/candidates/:id', to: 'candidates#show', as: :profile_show
  get '/application_forms/candidate_appforms', to: 'application_forms#appform_for_candidate', as: :appform_show

  get '/application_forms', to: 'application_forms#index', as: :admin_view_applications

  get '/timeslots/input', to: 'timeslots#input_timeslots', as: :input_available_timeslots
  get '/timeslots/list', to: 'timeslots#list'
  post '/timeslots/create', to: 'timeslots#create'
  post '/timeslots/delete_where', to: 'timeslots#delete_where'
  post '/book_appointment', to: 'appointments#create'
  get '/appointments_list', to: 'appointments#list'
  get '/appointments_calendar_list', to: 'appointments#calendar_index'
  get '/application_forms/:id', to: 'application_forms#show'

end
