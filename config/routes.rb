Rails.application.routes.draw do
  resources :questions
  resources :questionshard
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizzhard' => 'quizzhard#hard'
end