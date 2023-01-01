Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizz' => 'quizz#hard'
  get '/quizz' => 'quizz#medium'
end