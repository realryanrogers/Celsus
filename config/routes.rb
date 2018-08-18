Rails.application.routes.draw do
  
  resources :tests
  root 'static_pages#home'



  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
