Rails.application.routes.draw do
  resources :art_galleries
  root :to => 'art_galleries#index'
end
