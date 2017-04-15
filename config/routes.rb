Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  namespace :vk_api do
    get 'users/:id', to: 'users#show', constraints: { id: /[\w+\.]+/ }
  end
end
