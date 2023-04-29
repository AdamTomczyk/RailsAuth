Rails.application.routes.draw do
  root to: "pets#index"
   resources :pets, only: [:index, :show, :new, :create] do
    resources :appointments, only: [:new, :create]
   end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
