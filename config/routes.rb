Rails.application.routes.draw do
  resources :vendorsweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors
  resources :sweets

end
