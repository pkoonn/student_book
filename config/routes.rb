Rails.application.routes.draw do
  devise_for :users
  root 'dashboards#index'
  resources :teachers, only: [] do
    resources :subjects do
      get '/attendances/:count', to: 'subjects/attendances#show', as: :attendance
    end
  end
  resources :students, only: [] do
    resources :subjects
  end
  resources :attendances
end
