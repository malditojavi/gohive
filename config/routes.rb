Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users
  resources :events

  get '/auth/:provider/callback', to: 'sessions#create'

  root to: "events#index"

  resources :events do
    member do
      put "like", to: "events#upvote"
    end
  end

end
