Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizzmedium' => 'quizzmediumg#index'
  get '/quizzhard' => 'quizzhard#index'
end