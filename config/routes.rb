Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz-hard' => 'quizz-hard#index'
  get '/quizz-easy' => 'quizz-easy#index'
  get '/quizz-medium' => 'quizz-medium#index'
end