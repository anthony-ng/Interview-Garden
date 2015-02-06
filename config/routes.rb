Rails.application.routes.draw do

  get 'answers/new'

  root :to => "questions#index"

  # Nested routes
  resources :questions do
    resources :answers
    member do
      post 'upvote'
      post 'downvote'
    end
  end

  # get '/questions/:id/upvote' => 'questions#upvote'

  # Custom routes
  get '/all' => 'questions#index', as: 'all_questions'

end
