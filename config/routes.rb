Rails.application.routes.draw do
  resources :questions
  root "home#home"

  get '/quizz' => 'quizz#quizz'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
