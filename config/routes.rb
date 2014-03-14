Invoice::Application.routes.draw do

  resources :authentications
  # devise_for :users

  resources :companies
  resources :customers do
    collection do
      post :destroy_members # customers/:id_customer/destroy_member
    end
  end
  resources :categories
  resources :products
  root :to => "home#index"
  # root to: 'authentications#home'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
  controllers: { omniauth_callbacks: "authentications", registrations: "registrations" }


end
