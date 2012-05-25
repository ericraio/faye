FayeAnime::Application.routes.draw do
  devise_scope :user do
    match "/users" => "Registrations#create"
  end

  resources :categories, :except => [:index, :show]
  resources :forums, :except => :index do
    resources :topics, :shallow => true, :except => :index do
      resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end

  resources :animes, :only => [:index, :show]

  resources :episodes, :only => :show
  match 'episodes/comments' => 'episodes#comments', via: :post, as: :comments
  match 'search' => 'animes#search', via: :get, as: :anime_search
  post 'episodes/report'


  root to: "home#index"
  match ':name' => 'Users#show', as: :user

  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks"}
  resources :users, only: :show

  resources :animes do
    get :autocomplete_episode_title, :on => :collection
  end

end
