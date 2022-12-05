Rails.application.routes.draw do
  get 'static_pages/help'
  get 'static_pages/theory'
  resources :negbinoms
  resources :poissons
  root to: "static_pages#help"
end
