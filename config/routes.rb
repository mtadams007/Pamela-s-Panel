Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'students#index'

  resources :users
  resources :students
  resources :teachers
  resources :courses do
    resources :cohorts
  end
  resources :cohorts

end
