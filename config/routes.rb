Rails.application.routes.draw do
  devise_for :users
  resources :events
  root to: "events#index"

  resources :events do
    member do
      put "like", to: "events#upvote"
    end
  end

end
