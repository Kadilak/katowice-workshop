Rails.application.routes.draw do
  root 'visitors#index'

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :student do
    resources :payments, only: [:new, :create]
  end
  resources :payments, only: [:index, :destroy]

  resources :teachers do
  	get :subjects
  end

  get 'report/subjects', to: 'reports#subjects', as: 'report_subjects'
end
