PlantsIdApp::Application.routes.draw do

  get "events/index"
devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}
root "home#index"
  
end
