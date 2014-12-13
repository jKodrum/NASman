Rails.application.routes.draw do
  get 'dashboard/index'

  devise_for :users, :controllers => { omniauth_callbacks: "omniauth/omniauth_callbacks" }
  resources :posters
  get '/:user_name(.:id)' => "users#show", as: :user_profile
  root 'dashboard#index'
end
