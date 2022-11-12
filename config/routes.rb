Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz-hard' => 'quizz-hard#index'
end