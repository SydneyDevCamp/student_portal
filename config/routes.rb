Students004::Application.routes.draw do

  

  resources :user_profiles


  resources :prework_modules do
    resources :prework_questions
    resources :user_modules
  end

  get "course/index", :id => "course"
  match "course" => "course#index"

  get "prework/index", :id => "prework"
  match "prework" => "prework#index"

  resources :categories, :except => [:index, :show]
  resources :forums, :except => :index do
    resources :topics, :shallow => true, :except => :index do
      resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users


end