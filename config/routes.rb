Rails.application.routes.draw do
  root "users#index"
  post 'users/log'  => 'users#log' , as: 'user_log'
  get 'users/show_multiple' => 'users#show_multiple' , as: 'show_multiple'
  get 'users/:id/:email_link' => 'users#setpassword' , as: 'set_password'
  get 'users/:id/:email_link/:setting' => 'users#report' , as: 'view_report'
  get 'users/create_multiple' => 'users#create_multiple_users' , as: 'create_multiple'
  post "/users/create_multiple" => 'users#generate_user' , as: 'generate_users'
  resources :users

  
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
