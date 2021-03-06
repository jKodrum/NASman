Rails.application.routes.draw do
  root to: 'files#index'
  devise_for :users, :controllers => { omniauth_callbacks: "omniauth/omniauth_callbacks" }
  resources :posters
  resources :files
  get 'rename' => 'files#rename', as: :rename

  get '/:user_name(.:id)' => "users#show", as: :user_profile

  get  "dropbox/main"
  post "dropbox/upload"
  get  "dropbox/auth_start"
  get  "dropbox/auth_finish"

end
