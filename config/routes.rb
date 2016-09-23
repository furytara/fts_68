Rails.application.routes.draw do
  devise_for :users
  resources :exams
  root to: "exams#index"
  namespace :admin do
    resources :subjects
    resources :questions
    root to: "subjects#index"
  end
end
