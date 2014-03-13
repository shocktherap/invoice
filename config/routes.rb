Invoice::Application.routes.draw do

  devise_for :users

  resources :companies
  resources :customers do
    collection do
      post :destroy_members # customers/:id_customer/destroy_member
    end
  end
  resources :categories
  resources :products
  root :to => "home#index"

end
