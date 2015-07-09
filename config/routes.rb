Rails.application.routes.draw do
  devise_for :users

  resources 'courses'
  resources 'crushes'
  resources 'schedules'

  get 'summary', to: 'pages#summary', as: :summary

  root to: 'pages#index'

end
