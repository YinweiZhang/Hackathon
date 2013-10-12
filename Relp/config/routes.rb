Relp::Application.routes.draw do
  resources :users
  resources :restaurants
  resource :session, :only => [:create, :destroy]

  resource :root

  root :to => "roots#show"
end
