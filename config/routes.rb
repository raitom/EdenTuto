EdenTuto::Application.routes.draw do
  devise_for :users

  root :to => "tutocenter#index"
end
