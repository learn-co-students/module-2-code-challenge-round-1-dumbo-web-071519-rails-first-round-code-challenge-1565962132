Rails.application.routes.draw do
  # used rails g resource so it generated my routes for me
  resources :vendor_sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/vendors', to: "vendors#index", as: "vendors"
  get '/vendors/:id', to: "vendors#show", as: "show_vendor"
  # used resources to have all routes easily but I know I didn't need any other routes for sweets+vendors other than index and show
  resources :sweets
  resources :vendors
end
