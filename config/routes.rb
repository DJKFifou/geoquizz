Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizzhard' => 'quizz#index'
end