Rails.application.routes.draw do
  resources :balloons

  root to: 'balloons#index'
end
