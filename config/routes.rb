PlantsIdApp::Application.routes.draw do

root "home#index"

devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}


resources :events
resources :rsvps, only: :create
  
end
