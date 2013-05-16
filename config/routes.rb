EdenTuto::Application.routes.draw do
  get "tutocenter/index"

  devise_for :users

  root :to => "site#index"
end
