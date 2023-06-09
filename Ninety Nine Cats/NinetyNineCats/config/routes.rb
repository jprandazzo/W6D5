Rails.application.routes.draw do
  resources :cats, except: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "cats#index"
end
