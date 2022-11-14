Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz' => 'quizz#index'
  get '/quizzmedium' => 'quizzmedium#indexmedium'
  get '/quizzhard' => 'quizzhard#indexhard'
end