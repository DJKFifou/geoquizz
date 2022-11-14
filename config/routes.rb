Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz' => 'quizz#index'
end