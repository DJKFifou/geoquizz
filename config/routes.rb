Rails.application.routes.draw do
  resources :questions
  resources :questionshard
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizzmedium' => 'quizz#medium'
  get '/quizzhard' => 'quizz#hard'
end