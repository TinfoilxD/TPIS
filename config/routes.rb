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
  get '/book_appointment/:id', to: 'appointments#book_appointment', as: :candidate_book_appointment
  
  get '/candidates/:id/edit', to: 'candidates#edit', as: :profile_edit
  get '/candidates/:id', to: 'candidates#show', as: :profile_show
  get '/application_forms_all', to: 'application_forms#appform_candidate', as: :appform_all


  # Create_Application_For task from quest log routes
  # specan = "Specific Candidate"
  get '/createapp', to: 'candidates#createapp', as: :admin_create_app_for_index
  get '/createapp/:id/new', to: 'application_forms#new', as: :admin_create_app_for
  get '/specan/:id', to: 'application_forms#specan', as: :admin_view_all_apps



  get '/application_forms', to: 'application_forms#index', as: :admin_view_applications

  get '/timeslots/input', to: 'timeslots#input_timeslots', as: :input_available_timeslots
  get '/timeslots/list', to: 'timeslots#list'
  post '/timeslots/create', to: 'timeslots#create'
  post '/timeslots/delete_where', to: 'timeslots#delete_where'
  post '/book_appointment', to: 'appointments#create'
  get '/appointments_list', to: 'appointments#list'
  get '/appointments_calendar_list', to: 'appointments#calendar_index'
  get '/application_forms/:id', to: 'application_forms#show'

  #show appointments by candidates

  get '/bycandidate/:id', to: 'appointments#bycandidate', as: :admin_view_appt_percandidate
  get '/viewappt', to: 'candidates#viewappt', as: :admin_view_appointments_index

  post '/user_controls/security_question_render', to: 'user_controls#security_question_render'
  post '/answer_check/', to: 'user_controls#answer_check'

  get '/bycandidate/:id', to: 'appointments#bycandidate', as: :view_my_appointment

  # show applications by candidates
  get '/specan/:id', to: 'application_forms#specan', as: :view_my_application
end
