Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'students#index'

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


  resources :administrators


end
