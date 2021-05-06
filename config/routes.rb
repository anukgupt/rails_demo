Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#get method route is /about controller is about and function is index
get "about", to: "about#index" #"about" or "/about" is same
root to:"main#index"  #root "main#index" WROKS SIMILARLY
get "sign_up", to: "registrations#new"
post "sign_up", to: "registrations#create"
get "sign_in", to: "sessions#new"
post "sign_in", to: "sessions#create"
delete "logout", to: "sessions#destroy"
get "edit_password", to:"password#edit"
patch "edit_password", to:"password#update"
get "edit_password/reset", to:"password_reset#new"
post "edit_password/reset", to:"password_reset#create"
get "edit_password/reset/edit", to:"password_reset#edit"
patch "edit_password/reset/edit", to:"password_reset#update" 
end
