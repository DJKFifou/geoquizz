Rails.application.routes.draw do
  resources :questions
  resources :questionshard
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizzmedium' => 'quizzmedium#medium'
  get '/quizzhard' => 'quizzhard#hard'
end