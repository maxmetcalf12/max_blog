# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :articles, only: %i[index show]
  resources :product_reviews, path: 'products', only: %i[index show]
  resources :code_tutorials, path: 'code', only: %i[index show]
end
