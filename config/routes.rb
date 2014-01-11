PlantsIdApp::Application.routes.draw do

  get "rsvp/index"
  root "home#index"

devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}


resources :events
resources :rsvps, only: :create
resource :profile, only: [:show, :edit, :update]
end
