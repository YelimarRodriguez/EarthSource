PlantsIdApp::Application.routes.draw do
  root "home#index"
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  get 'profiles/:id', to: 'profiles#show', as: 'user_profile'

  resources :events
  resources :rsvps, only: :create
  resource :profile, only: [:show, :edit, :update]
end
