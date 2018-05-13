Rails.application.routes.draw do

  devise_for :users
  get 'house/index'
  get 'house/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'login#index'

  # root 'devise/sessions#sign_in'


  resources :students
  resources :educators

  resources :courses do
    resources :cohorts
  end

  resources :cohorts do
    resources :grades
  end

  resources :grades
  resources :house
  resources :login
  resources :administrators


end
