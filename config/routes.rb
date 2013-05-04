EdenTuto::Application.routes.draw do
  devise_for :users

  root :to => "trash#index"
end
