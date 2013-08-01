Hogwarts::Application.routes.draw do
  
  root :to => 'welcome#index'

  resources :students,  :except => [:edit, :update, :destroy]
  resources :houses,    :only   => [:index, :show]
  
end