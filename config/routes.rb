Rails.application.routes.draw do

  get 'answers/new'

  root :to => "questions#index"

  # Nested routes
  resources :questions do
    resources :answers
  end

  # Custom routes
  get '/all' => 'questions#index', as: 'all_questions'

end
