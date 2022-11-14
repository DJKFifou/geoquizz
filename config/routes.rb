Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizzeasy' => 'quizz#index'
  get '/quizzmedium' => 'quizz#index'
  get '/quizzhard' => 'quizz#index'
end