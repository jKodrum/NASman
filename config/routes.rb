Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: "omniauth/omniauth_callbacks" }
  root 'dashboard#index'
  get 'dashboard/index'

  resources :posters
  get '/:user_name(.:id)' => "users#show", as: :user_profile

  get  "dropbox/main"
  post "dropbox/upload"
  get  "dropbox/auth_start"
  get  "dropbox/auth_finish"

  post '/NAS_login/:resource_name' => "dashboard#NAS_login", as: :NAS_login
end
