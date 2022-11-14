Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizzeasy' => 'quizzeasy#index'
  get '/quizzmedium' => 'quizz#index'
  get '/quizzhard' => 'quizzhard#index'
end