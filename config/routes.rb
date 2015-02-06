Rails.application.routes.draw do

  root :to => "questions#show", :id => 1

  resources :questions do
    member do
      post 'upvote'
      post 'downvote'
    end

    # Nested routes
    resources :answers do
      member do
        post 'upvote'
        post 'downvote'
      end
    end
  end

  # Custom routes
  get '/all' => 'questions#index', as: 'all_questions'

end
