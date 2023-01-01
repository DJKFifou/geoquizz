Rails.application.routes.draw do
  resources :questions
  resources :questionshard
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizzmedium' => 'quizzmedium#index'
  get '/quizzhard' => 'quizzhard#index'
end