Rails.application.routes.draw do
  get "questions" => "questions#index"
  get "questions/test" => "questions#test"

  root :to => "questions#index"
  resources :questions do
    resources :answers
  end
end
