Rails.application.routes.draw do
  resources :notes
  devise_for :users, :skip => [:registrations]

  devise_scope :user do
    get "user/sign_up", to: "users/registrations#new", as: :new_user_registration
    post "user/sign_up", to: "users/registrations#create", as: :user_registration
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "notes#index"
end
