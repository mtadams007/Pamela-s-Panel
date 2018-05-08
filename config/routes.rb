Rails.application.routes.draw do

  get 'house/index'
  get 'house/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'house#new'

  resources :profiles
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

  resources :administrators


end
