Spree::Core::Engine.routes.draw do
   Spree::Core::Engine.add_routes do
    resources :contacts
    get :address
    put :address
  end
end
