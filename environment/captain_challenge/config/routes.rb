# frozen_string_literal: true

# Routes provided by the application
Rails.application.routes.draw do
  resources :combattants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'arena#home'
end
